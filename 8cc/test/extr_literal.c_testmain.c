
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print (char*) ;
 int test_char () ;
 int test_compound () ;
 int test_float () ;
 int test_mbstring () ;
 int test_string () ;
 int test_ucn () ;

void testmain() {
    print("literal");
    test_char();
    test_string();
    test_mbstring();
    test_float();
    test_ucn();
    test_compound();
}
