
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;
 int test_buf () ;
 int test_dict () ;
 int test_file () ;
 int test_list () ;
 int test_map () ;
 int test_map_stack () ;
 int test_path () ;
 int test_set () ;

int main(int argc, char **argv) {
    test_buf();
    test_list();
    test_map();
    test_map_stack();
    test_dict();
    test_set();
    test_path();
    test_file();
    printf("Passed\n");
    return 0;
}
