
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct color {int name; } ;


 int color_count ;
 struct color const* colors ;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static const struct color *
color_of(const char *arg)
{
   int icolor = color_count;

   while (--icolor >= 0)
   {
      if (strcmp(colors[icolor].name, arg) == 0)
         return colors+icolor;
   }

   fprintf(stderr, "genpng: invalid color %s\n", arg);
   exit(1);
}
