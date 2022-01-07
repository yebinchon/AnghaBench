
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void ifdef() {
    int a = 0;



    a = 2;

    expect(a, 1);




    a = 4;

    expect(a, 4);


    a = 5;



    expect(a, 6);


    a = 7;



    expect(a, 7);
}
