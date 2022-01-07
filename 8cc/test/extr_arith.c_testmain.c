
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print (char*) ;
 int test_basic () ;
 int test_bool () ;
 int test_comma () ;
 int test_inc_dec () ;
 int test_relative () ;
 int test_ternary () ;
 int test_unary () ;

void testmain() {
    print("basic arithmetic");
    test_basic();
    test_relative();
    test_inc_dec();
    test_bool();
    test_unary();
    test_ternary();
    test_comma();
}
