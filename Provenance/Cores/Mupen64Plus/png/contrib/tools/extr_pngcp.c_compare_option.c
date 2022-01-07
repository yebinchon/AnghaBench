
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct display {scalar_t__* value; TYPE_1__* stack; } ;
struct TYPE_2__ {int opt; scalar_t__ best_val; scalar_t__ lo; scalar_t__ hi; } ;



__attribute__((used)) static int
compare_option(const struct display *dp, unsigned int sp)
{
   int opt = dp->stack[sp].opt;




   if (dp->stack[sp].best_val < dp->value[opt])
      return -1;




   else if (dp->stack[sp].best_val > dp->value[opt])
   {
      if (dp->stack[sp].lo <= dp->stack[sp].hi )
         return 1;

      else
         return -1;
   }

   else
      return 0;
}
