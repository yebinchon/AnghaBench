
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*,char const*,unsigned long) ;
 int stderr ;
 unsigned long strtoul (char const*,char**,int ) ;
 int usage (char const*) ;

unsigned long
component(const char *prog, const char *arg, int issRGB)
{
   char *ep;
   unsigned long c = strtoul(arg, &ep, 0);

   if (ep <= arg || *ep || c > 65535 || (issRGB && c > 255))
   {
      fprintf(stderr, "%s: %s: invalid component value (%lu)\n", prog, arg, c);
      usage(prog);
   }

   return c;
}
