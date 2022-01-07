
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int ) ;
 int * p1 ;
 int * p2 ;
 int print (char*) ;
 int * q1 ;

void testmain() {
    print("constexpr");
    expect(1, *p1);
    expect(3, *q1);
    expect(7, p2[-1]);
}
