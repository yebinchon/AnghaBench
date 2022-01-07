
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char*,int,double,double) ;
 int printfail () ;

void fexpectd(char *file, int line, double a, double b) {
    if (a == b)
        return;
    printfail();
    printf("%s:%d: %lf expected, but got %lf\n", file, line, a, b);
    exit(1);
}
