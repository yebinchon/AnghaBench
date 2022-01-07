
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * shape_fn_ptr ;
struct TYPE_2__ {int *** function; int name; } ;


 int exit (int) ;
 int fprintf (int ,char*,char const*,...) ;
 unsigned int shape_count ;
 TYPE_1__* shape_defs ;
 int stderr ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static shape_fn_ptr
shape_of(const char *arg, double width, int f)
{
   unsigned int i;

   for (i=0; i<shape_count; ++i) if (strcmp(shape_defs[i].name, arg) == 0)
   {
      shape_fn_ptr fn = shape_defs[i].function[width != 0][f];

      if (fn != ((void*)0))
         return fn;

      fprintf(stderr, "genpng: %s %s not supported\n",
         width == 0 ? "filled" : "unfilled", arg);
      exit(1);
   }

   fprintf(stderr, "genpng: %s: not a valid shape name\n", arg);
   exit(1);
}
