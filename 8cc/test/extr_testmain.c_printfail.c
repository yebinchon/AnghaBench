
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fileno (int ) ;
 scalar_t__ isatty (int ) ;
 int printf (char*) ;
 int stdout ;

void printfail() {
    printf(isatty(fileno(stdout)) ? "\e[1;31mFailed\e[0m\n" : "Failed\n");
}
