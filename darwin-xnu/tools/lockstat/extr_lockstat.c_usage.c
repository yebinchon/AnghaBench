
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 char* pgmname ;
 int stderr ;

void
usage()
{
 fprintf(stderr, "Usage: %s [all, spin, mutex, rw, <lock group name>] {<repeat interval>} {abs}\n", pgmname);
 exit(EXIT_FAILURE);
}
