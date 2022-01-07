
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* led_map; } ;
struct TYPE_6__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_7__ {scalar_t__* map; scalar_t__* setup; } ;


 int MAX_LEDS ;
 int OVERLAY_VISIBILITY_HIDDEN ;
 int RARCH_LOG (char*,...) ;
 TYPE_2__* config_get_ptr () ;
 TYPE_3__* cur ;
 int input_overlay_set_visibility (scalar_t__,int ) ;

__attribute__((used)) static void overlay_init(void)
{
   int i;
   settings_t *settings = config_get_ptr();

   RARCH_LOG("[LED]: overlay LED driver init\n");

   for (i = 0; i < MAX_LEDS; i++)
   {
      cur->setup[i] = 0;
      cur->map[i] = settings->uints.led_map[i];
      RARCH_LOG("[LED]: overlay map[%d]=%d\n",i,cur->map[i]);

      if (cur->map[i] >= 0)
         input_overlay_set_visibility(cur->map[i],
               OVERLAY_VISIBILITY_HIDDEN);
   }
}
