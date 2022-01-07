
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage()
{
 fprintf(stderr,
  "usage: tags [-i]   interactive/input\n"
  "            [-v V] verbosity level 0..2 (1)\n"
  "            [-h]   help info\n"
  "            pid    process id of target task\n"
 );
 exit(1);
}
