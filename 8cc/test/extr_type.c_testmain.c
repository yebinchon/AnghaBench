
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print (char*) ;
 int test_align () ;
 int test_pointer () ;
 int test_signed () ;
 int test_storage_class () ;
 int test_type () ;
 int test_typedef () ;
 int test_unsigned () ;
 int test_unusual_order () ;

void testmain() {
    print("type system");
    test_type();
    test_signed();
    test_unsigned();
    test_storage_class();
    test_pointer();
    test_unusual_order();
    test_typedef();
    test_align();
}
