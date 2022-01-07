
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;

void print_usage(char** argv) {
    printf("Usage: %s test_name threads length\n", argv[0]);
}
