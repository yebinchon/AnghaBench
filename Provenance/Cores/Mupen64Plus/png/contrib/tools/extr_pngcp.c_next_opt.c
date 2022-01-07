
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct display {unsigned int tsp; int* value; unsigned int nsp; TYPE_2__* stack; } ;
typedef unsigned int png_byte ;
typedef scalar_t__ png_alloc_size_t ;
struct TYPE_6__ {unsigned int value_count; TYPE_1__* values; } ;
struct TYPE_5__ {int end; unsigned int opt; unsigned int entry; int lo; int hi; scalar_t__ best_size; scalar_t__ lo_size; scalar_t__ hi_size; int best_val; } ;
struct TYPE_4__ {char* name; int value; } ;


 scalar_t__ MAX_SIZE ;
 int assert (int) ;
 scalar_t__ opt_list_end (struct display*,unsigned int,unsigned int) ;
 TYPE_3__* options ;
 char const* range_lo ;
 int set_opt_string (struct display*,unsigned int) ;

__attribute__((used)) static void
next_opt(struct display *dp, unsigned int sp)






{
   int search = 0;
   png_byte entry, opt;
   const char *entry_name;


   assert(sp+1U == dp->tsp && !dp->stack[sp].end);

   opt = dp->stack[sp].opt;
   entry = dp->stack[sp].entry;
   assert(entry+1U < options[opt].value_count);
   entry_name = options[opt].values[entry].name;
   assert(entry_name != ((void*)0));




   if (entry_name == range_lo)
   {




      if (dp->stack[sp].lo > dp->stack[sp].hi)
         dp->value[opt]++;

      else
      {

         png_alloc_size_t best_size = dp->stack[sp].best_size;
         int lo = dp->stack[sp].lo;
         int hi = dp->stack[sp].hi;
         int val = dp->value[opt];

         search = 1;
         assert(best_size < MAX_SIZE);

         if (val == lo)
         {

            dp->stack[sp].lo_size = best_size;
            assert(hi > val);

            if (hi == val+1)
               dp->stack[sp].end = 1;

            val = hi;
         }

         else if (val == hi)
         {
            dp->stack[sp].hi_size = best_size;
            assert(val > lo+1);

            if (val == lo+2)
               dp->stack[sp].end = 1;

            val = (lo + val)/2;
         }

         else
         {
            png_alloc_size_t lo_size = dp->stack[sp].lo_size;
            png_alloc_size_t hi_size = dp->stack[sp].hi_size;


            assert(lo_size < MAX_SIZE && hi_size < MAX_SIZE);




            if (val < lo)
            {

               dp->stack[sp].lo = val;
               dp->stack[sp].lo_size = best_size;
               val = lo;
               best_size = lo_size;
               lo = dp->stack[sp].lo;
               lo_size = dp->stack[sp].lo_size;
            }

            else if (val > hi)
            {

               dp->stack[sp].hi = val;
               dp->stack[sp].hi_size = best_size;
               val = hi;
               best_size = hi_size;
               hi = dp->stack[sp].hi;
               hi_size = dp->stack[sp].hi_size;
            }


            assert(lo < val && val < hi);




            if (hi == lo+3)
            {



               val = lo + ((val == lo+1) ? 2 : 1);
               assert(lo < val && val < hi);
               dp->stack[sp].end = 1;
            }

            else
            {






               assert(hi > lo+3);

               if (lo_size <= best_size && best_size <= hi_size)
               {





                  if (val == lo+1)
                  {
                     ++val;
                     dp->stack[sp].end = 1;
                  }

                  else
                  {
                     dp->stack[sp].hi = hi = val;
                     dp->stack[sp].hi_size = best_size;
                     val = (lo + val) / 2;
                  }
               }

               else if (lo_size >= best_size && best_size >= hi_size)
               {




                  if (val == hi-1)
                  {
                     --val;
                     dp->stack[sp].end = 1;
                  }

                  else
                  {
                     dp->stack[sp].lo = lo = val;
                     dp->stack[sp].lo_size = best_size;
                     val = (val + hi) / 2;
                  }
               }
               else if (lo_size <= hi_size)
               {
                  dp->stack[sp].hi = val;
                  dp->stack[sp].hi_size = best_size;
                  val = --hi;
               }

               else
               {
                  dp->stack[sp].lo = val;
                  dp->stack[sp].lo_size = best_size;
                  val = ++lo;
               }




               assert(hi > lo+1);
               if (hi <= lo+2)
                  dp->stack[sp].end = 1;
            }
         }

         assert(val != dp->stack[sp].best_val);
         dp->value[opt] = val;
         dp->stack[sp].best_size = MAX_SIZE;
      }
   }

   else
   {

      dp->value[opt] = options[opt].values[++entry].value;
      dp->stack[sp].entry = entry;
   }

   set_opt_string(dp, sp);

   if (!search && opt_list_end(dp, opt, entry))
      dp->stack[sp].end = 1;

   else if (!dp->stack[sp].end)
      dp->nsp = dp->tsp;
}
