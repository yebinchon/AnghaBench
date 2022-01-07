
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* map; } ;


 int MAX_LEDS ;
 int OVERLAY_VISIBILITY_HIDDEN ;
 int OVERLAY_VISIBILITY_VISIBLE ;
 int RARCH_LOG (char*,int,int) ;
 int RARCH_WARN (char*,int) ;
 TYPE_1__* cur ;
 int input_overlay_set_visibility (int,int ) ;

__attribute__((used)) static void overlay_set(int led, int state)
{
   int gpio = 0;
   if ((led < 0) || (led >= MAX_LEDS))
   {
      RARCH_WARN("[LED]: invalid led %d\n", led);
      return;
   }

   gpio = cur->map[led];

   if (gpio < 0)
      return;

   input_overlay_set_visibility(gpio,
         state ? OVERLAY_VISIBILITY_VISIBLE
         : OVERLAY_VISIBILITY_HIDDEN);

   RARCH_LOG("[LED]: set visibility %d %d\n", gpio, state);
}
