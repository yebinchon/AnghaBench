
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 unsigned long strtoul (char*,char**,int ) ;

__attribute__((used)) static void
parse_color(char *arg, unsigned int *colors)
{
   unsigned int ncolors = 0;

   while (*arg && ncolors < 4)
   {
      char *ep = arg;

      unsigned long ul = strtoul(arg, &ep, 0);

      if (ul > 65535)
      {
         fprintf(stderr, "makepng --color=...'%s': too big\n", arg);
         exit(1);
      }

      if (ep == arg)
      {
         fprintf(stderr, "makepng --color=...'%s': not a valid color\n", arg);
         exit(1);
      }

      if (*ep) ++ep;
      arg = ep;

      colors[++ncolors] = (unsigned int)ul;
   }

   if (*arg)
   {
      fprintf(stderr, "makepng --color=...'%s': too many values\n", arg);
      exit(1);
   }

   *colors = ncolors;
}
