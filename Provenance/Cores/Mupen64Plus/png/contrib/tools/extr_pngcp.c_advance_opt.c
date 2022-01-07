
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct display {unsigned int nsp; unsigned int tsp; unsigned int write_size; TYPE_1__* stack; int * value; int csp; } ;
typedef size_t png_byte ;
struct TYPE_2__ {unsigned int best_size; int end; int best_val; } ;


 unsigned int MAX_SIZE ;
 int assert (int) ;
 scalar_t__ compare_option (struct display*,unsigned int) ;
 int next_opt (struct display*,unsigned int) ;
 int push_opt (struct display*,unsigned int,size_t,int) ;

__attribute__((used)) static int
advance_opt(struct display *dp, png_byte opt, int search)
{
   unsigned int sp = dp->csp++;

   assert(sp >= dp->nsp);
   if (sp >= dp->tsp)
   {
      push_opt(dp, sp, opt, search);
      return 1;
   }

   else
   {
      int ret = 0;






      assert(dp->write_size > 0U && dp->write_size < MAX_SIZE);

      if (dp->stack[sp].best_size > dp->write_size ||
          (dp->stack[sp].best_size == dp->write_size &&
           compare_option(dp, sp) > 0))
      {
         dp->stack[sp].best_size = dp->write_size;
         dp->stack[sp].best_val = dp->value[opt];
      }

      if (sp+1U >= dp->tsp)
      {
         next_opt(dp, sp);
         ret = 1;
      }

      else if (!dp->stack[sp].end)
         dp->nsp = sp+1U;

      return ret;
   }
}
