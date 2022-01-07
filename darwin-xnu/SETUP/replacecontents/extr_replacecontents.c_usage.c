
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 char* getprogname () ;
 int stderr ;

void usage(void)
{
 fprintf(stderr, "Usage: %s <dst> <new> <contents> <...>\n",
   getprogname());
 exit(EX_USAGE);
}
