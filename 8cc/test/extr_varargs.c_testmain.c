
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print (char*) ;
 int test_builtin () ;
 int test_float (double,double,double,double) ;
 int test_int (int,int,int,int,int) ;
 int test_mix (char*,double,int,char*,int) ;
 int test_va_list () ;

void testmain() {
    print("varargs");
    test_builtin();
    test_int(1, 2, 3, 5, 8);
    test_float(1.0, 2.0, 4.0, 8.0);
    test_mix("abc", 2.0, 4, "d", 5);
    test_va_list();
}
