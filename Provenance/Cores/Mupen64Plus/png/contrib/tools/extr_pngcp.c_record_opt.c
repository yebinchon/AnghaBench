
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct display {unsigned int csp; unsigned int const tsp; int opt_string_start; TYPE_1__* stack; } ;
typedef int png_byte ;
struct TYPE_2__ {int opt_string_end; } ;


 int set_opt_string_ (struct display*,unsigned int const,int ,char const*) ;

__attribute__((used)) static void
record_opt(struct display *dp, png_byte opt, const char *entry_name)




{
   const unsigned int sp = dp->csp;

   if (sp >= dp->tsp)
   {




      const int offset = set_opt_string_(dp, sp, opt, entry_name);

      if (sp > 0)
         dp->stack[sp-1].opt_string_end = offset;

      else
         dp->opt_string_start = offset;
   }


}
