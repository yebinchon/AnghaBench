
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int printf (char*,char*) ;
 int stdout ;

void print(char *s) {
    printf("Testing %s ... ", s);
    fflush(stdout);
}
