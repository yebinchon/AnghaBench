
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int ) ;
 int no_declaration () ;
 int oldstyle1 (int,int) ;
 int oldstyle2 () ;
 int oldstyle3 (int) ;
 int oldstyle4 (int,double) ;
 int print (char*) ;

void testmain() {
    print("K&R");
    expect(3, no_declaration());
    expect(7, oldstyle1(3, 4));
    expect(4, oldstyle2());
    expect(5, oldstyle3(5));
    expect(9, oldstyle4(5, 4.0));
}
