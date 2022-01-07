
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char*,int,float,float) ;
 int printfail () ;

void fexpectf(char *file, int line, float a, float b) {
    if (a == b)
        return;
    printfail();
    printf("%s:%d: %f expected, but got %f\n", file, line, a, b);
    exit(1);
}
