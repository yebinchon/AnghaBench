
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print (char*) ;
 int test_arrays () ;
 int test_constexpr () ;
 int test_literals () ;
 int test_pointers () ;
 int test_primitives () ;
 int test_struct () ;
 int test_unsigned () ;
 int test_vars () ;

void testmain() {
    print("sizeof");
    test_primitives();
    test_pointers();
    test_unsigned();
    test_literals();
    test_arrays();
    test_vars();
    test_struct();
    test_constexpr();
}
