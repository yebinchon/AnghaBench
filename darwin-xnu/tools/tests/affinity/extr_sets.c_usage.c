
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
  "usage: sets [-a]   Turn affinity on (off)\n"
  "            [-b B] Number of buffers per set/line (2)\n"
  "            [-c]   Configure for max cache performance\n"
  "            [-h]   Print this\n"
  "            [-i I] Number of items/buffers to process (1000)\n"
  "            [-s S] Number of stages per set/line (2)\n"
  "            [-t]   Halt for keyboard input to start\n"
  "            [-p P] Number of pages per buffer (256=1MB)]\n"
  "            [-w]   Consumer writes data\n"
  "            [-v V] Level of verbosity 0..2 (1)\n"
  "            [N]    Number of sets/lines (2)\n"
 );
 exit(1);
}
