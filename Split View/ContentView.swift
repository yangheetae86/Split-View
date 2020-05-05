//
//  ContentView.swift
//  Split View
//
//  Created by JU HAN LEE on 2020/05/05.
//  Copyright © 2020 yht. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ListView()
            
            DetailView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListView: View {
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            NavigationLink(destination: DetailView()) {
            Text("Tap to see more!")
            }
        }
        .navigationBarTitle("hello, List")
    }
}

struct DetailView: View {
    var body: some View {
        Text("hello ⚙︎")
    }
}
