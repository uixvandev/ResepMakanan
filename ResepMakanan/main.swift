//
//  main.swift
//  ResepMakanan
//
//  Created by irfan wahendra on 07/05/24.
//

import Foundation

print("Dicoding, Resto")
print("Mari membuat makanan")

// Mark: Memasukkan resep dan jumlah makanan.
print("________________________")
print("Apa yang ingin anda buat?")
let food = readLine()

print("Masukkan jumlah item yang ingin Anda masukkan", terminator: ":")
let newITem = readLine() ?? "0"

print("________________________")

// Mark: Mengkonversi jumlah item yang perlu dimasukkan.
if let totalItem: Int = Int(newITem){
    var recipe = [String]()
    
    for index in 1...totalItem {
        print("Masukkan item ke \(index)", terminator: ":")
        let newItem = String(readLine() ?? "")
        recipe.append(newItem)
    }
    
    // Mark: Memasukkan waktu yang dibutuhkan untuk membuat resep.
    print("________________________")
    print("Berapa lama proses memasak dilakukan?")
    let time = readLine() ?? ""
    print("________________________")

    //Mark: Mengurutkan Item Resep.
    recipe.sort()
    
    //Mark: Menampilkan Hasil Resep.
    print("Anda akan membuat \(String(describing: food)) selama \(time) dengan resep:")
    for (index, value) in recipe.enumerated() {
        print(" \(index+1). \(value)")
    }
} else {
    print("Input tidak valid")
}

print("________________________")






    
