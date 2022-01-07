
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print (char*) ;
 int test_array () ;
 int test_array_designator () ;
 int test_complex_designator () ;
 int test_excessive () ;
 int test_nested () ;
 int test_primitive () ;
 int test_string () ;
 int test_struct () ;
 int test_struct_designator () ;
 int test_typedef () ;
 int test_zero () ;

void testmain() {
    print("initializer");

    test_array();
    test_string();
    test_struct();
    test_primitive();
    test_nested();
    test_array_designator();
    test_struct_designator();
    test_complex_designator();
    test_zero();
    test_typedef();
    test_excessive();
}
