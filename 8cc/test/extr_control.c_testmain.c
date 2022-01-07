
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print (char*) ;
 int test_computed_goto () ;
 int test_do () ;
 int test_for () ;
 int test_goto () ;
 int test_if () ;
 int test_label () ;
 int test_logor () ;
 int test_switch () ;
 int test_while () ;

void testmain() {
    print("control flow");
    test_if();
    test_for();
    test_while();
    test_do();
    test_switch();
    test_goto();
    test_label();
    test_computed_goto();
    test_logor();
}
