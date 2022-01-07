
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char*,int,char*) ;
 int printfail () ;

void ffail(char *file, int line, char *msg) {
    printfail();
    printf("%s:%d: %s\n", file, line, msg);
    exit(1);
}
