
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct display {unsigned int tsp; size_t min_windowBits; unsigned int nsp; TYPE_2__* stack; int * value; } ;
typedef size_t png_byte ;
struct TYPE_6__ {size_t value_count; int name; TYPE_1__* values; } ;
struct TYPE_5__ {size_t opt; size_t entry; int end; int best_val; int hi; int lo; int hi_size; int lo_size; int best_size; } ;
struct TYPE_4__ {char* name; int value; } ;


 int APP_WARNING ;
 int INT_MAX ;
 int INT_MIN ;
 int MAX_SIZE ;
 unsigned int SL ;
 int assert (int) ;
 int display_log (struct display*,int ,char*,int ) ;
 scalar_t__ opt_list_end (struct display*,size_t,size_t) ;
 TYPE_3__* options ;
 char* range_hi ;
 char const* range_lo ;
 int set_opt_string (struct display*,unsigned int) ;
 int text_stash (struct display*) ;

__attribute__((used)) static void
push_opt(struct display *dp, unsigned int sp, png_byte opt, int search)




{
   png_byte entry;
   const char *entry_name;

   assert(sp == dp->tsp && sp < SL);




   entry = options[opt].value_count;
   assert(entry > 0U);

   do
   {
      entry_name = options[opt].values[--entry].name;
      if (entry_name == range_lo)
         break;
   }
   while (entry > 0U);

   dp->tsp = sp+1U;
   dp->stack[sp].best_size =
      dp->stack[sp].lo_size =
      dp->stack[sp].hi_size = MAX_SIZE;

   if (search && entry_name == range_lo)
   {
      dp->stack[sp].lo = options[opt].values[entry].value;

      assert(entry+1 < options[opt].value_count &&
             options[opt].values[entry+1].name == range_hi);
      dp->stack[sp].hi = options[opt].values[entry+1].value;
   }

   else
   {

      dp->stack[sp].lo = INT_MAX;
      dp->stack[sp].hi = INT_MIN;
   }

   dp->stack[sp].opt = opt;
   dp->stack[sp].entry = entry;
   dp->stack[sp].best_val = dp->value[opt] = options[opt].values[entry].value;

   set_opt_string(dp, sp);




   if (opt_list_end(dp, opt, entry))
   {
      dp->stack[sp].end = 1;



      if (opt != dp->min_windowBits)
         display_log(dp, APP_WARNING, "%s: only testing one value",
               options[opt].name);
   }

   else
   {
      dp->stack[sp].end = 0;
      dp->nsp = dp->tsp;
   }





   text_stash(dp);
}
