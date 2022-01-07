
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active; int id; unsigned int x; unsigned int y; } ;


 int MAX_TOUCHES ;
 TYPE_1__* active_touch_positions ;
 scalar_t__ num_active_touches ;

__attribute__((used)) static void reorder_touches(void)
{
   int i, j;
   if (num_active_touches == 0)
      return;

   for (i = 0; i < MAX_TOUCHES; i++)
   {
      if (!active_touch_positions[i].active)
      {
         for (j=i+1; j<MAX_TOUCHES; j++)
         {
            if (active_touch_positions[j].active)
            {
               active_touch_positions[i].active =
                  active_touch_positions[j].active;
               active_touch_positions[i].id =
                  active_touch_positions[j].id;
               active_touch_positions[i].x = active_touch_positions[j].x;
               active_touch_positions[i].y = active_touch_positions[j].y;
               active_touch_positions[j].active = 0;
               active_touch_positions[j].id = -1;
               active_touch_positions[j].x = (unsigned) 0;
               active_touch_positions[j].y = (unsigned) 0;
               break;
            }

            if (j == MAX_TOUCHES)
               return;
         }
      }
   }
}
