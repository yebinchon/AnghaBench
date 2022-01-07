
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char*,int,char*,char*) ;
 int printfail () ;
 int strcmp (char*,char*) ;

void fexpect_string(char *file, int line, char *a, char *b) {
    if (!strcmp(a, b))
        return;
    printfail();
    printf("%s:%d: \"%s\" expected, but got \"%s\"\n", file, line, a, b);
    exit(1);
}
