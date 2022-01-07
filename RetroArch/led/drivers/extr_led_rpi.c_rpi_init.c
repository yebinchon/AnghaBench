
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * led_map; } ;
struct TYPE_6__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_7__ {int * map; scalar_t__* setup; } ;


 int MAX_LEDS ;
 int RARCH_LOG (char*,int,int ) ;
 TYPE_2__* config_get_ptr () ;
 TYPE_3__* cur ;

__attribute__((used)) static void rpi_init(void)
{
   int i;
   settings_t *settings = config_get_ptr();

   if (!settings)
      return;

   for(i = 0; i < MAX_LEDS; i++)
   {
      cur->setup[i] = 0;
      cur->map[i] = settings->uints.led_map[i];
      RARCH_LOG("[LED]: rpi map[%d]=%d\n", i, cur->map[i]);
   }
}
