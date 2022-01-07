
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 double strtod (char const*,char**) ;

__attribute__((used)) static double
coordinate_of(const char *arg)
{
   char *ep = ((void*)0);
   double w = strtod(arg, &ep);

   if (ep != ((void*)0) && *ep == 0)
      return w;

   fprintf(stderr, "genpng: invalid coordinate value %s\n", arg);
   exit(1);
}
