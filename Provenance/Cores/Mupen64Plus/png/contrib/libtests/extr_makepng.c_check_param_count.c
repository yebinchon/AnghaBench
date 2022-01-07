
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
check_param_count(int nparams, int expect)
{
   if (nparams != expect)
   {
      fprintf(stderr, "bad parameter count (internal error)\n");
      exit(1);
   }
}
