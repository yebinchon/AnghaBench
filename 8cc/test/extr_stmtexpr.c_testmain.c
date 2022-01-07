
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int ) ;
 int expectf (double,int ) ;
 int print (char*) ;

void testmain() {
    print("statement expression");

    expect(3, ({ 1; 2; 3; }));
    expectf(3.0, ({ 1; 2; 3.0; }));
    expect(5, ({ int a = 5; a; }));
}
