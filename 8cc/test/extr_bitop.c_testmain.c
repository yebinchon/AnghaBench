
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print (char*) ;
 int test_and () ;
 int test_not () ;
 int test_or () ;
 int test_shift () ;
 int test_xor () ;

void testmain() {
    print("bitwise operators");
    test_or();
    test_and();
    test_not();
    test_xor();
    test_shift();
}
