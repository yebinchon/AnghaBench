
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {unsigned int csp; } ;


 int assert (int) ;
 int compare_option (struct display const*,unsigned int) ;

__attribute__((used)) static int
better_options(const struct display *dp)
{
   unsigned int sp;

   for (sp=0; sp<dp->csp; ++sp)
   {
      int c = compare_option(dp, sp);

      if (c < 0)
         return 0;

      else if (c > 0)
         return 1;
   }

   assert(0 && "unreached");
}
