
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print (char*) ;
 int test_alignas () ;
 int test_alignof () ;
 int test_constexpr () ;

void testmain() {
    print("alignment");
    test_alignas();
    test_alignof();
    test_constexpr();
}
