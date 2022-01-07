
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*,char const*) ;
 int stderr ;

__attribute__((used)) static void
usage(const char *prog)
{
   fprintf(stderr,
      "%s: usage: %s [-linear|-sRGB] [-gray|-color] component{1,4}\n",
      prog, prog);
   exit(1);
}
