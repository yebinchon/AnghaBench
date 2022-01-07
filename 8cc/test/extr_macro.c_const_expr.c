
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;
 int fail (char*) ;

__attribute__((used)) static void const_expr() {
    int a = 1;

    a = 2;



    expect(2, a);


    a = 4;



    expect(4, a);



    a = 100;

    expect(100, a);


    a = 101;


    expect(101, a);


    a = 102;


    expect(102, a);



    a = 103;

    expect(103, a);



    a = 104;

    expect(104, a);
    a = 7;

    expect(7, a);




    a = 9;

    expect(9, a);




    a = 15;

    expect(15, a);




    a = 11;

    expect(11, a);


    a = 12;



    expect(12, a);
}
