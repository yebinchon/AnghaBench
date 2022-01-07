
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;
 double strtod (char const*,char**) ;

__attribute__((used)) static double
width_of(const char *arg)
{
   if (strcmp(arg, "filled") == 0)
      return 0;

   else
   {
      char *ep = ((void*)0);
      double w = strtod(arg, &ep);

      if (ep != ((void*)0) && *ep == 0 && w > 0)
         return w;
   }

   fprintf(stderr, "genpng: invalid line width %s\n", arg);
   exit(1);
}
