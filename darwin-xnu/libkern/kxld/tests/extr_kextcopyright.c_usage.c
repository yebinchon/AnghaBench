
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* gProgname ;
 int printFormat () ;
 int printf (char*,char*) ;

__attribute__((used)) static void
usage(void)
{
    printf("usage: %s [path to kext]\n\n"
           "This program validates the copyright string in a kext's info "
           "dictionary.\n\n", gProgname);

    printFormat();
}
