
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* map; scalar_t__* setup; } ;


 int MAX_LEDS ;
 int RARCH_LOG (char*,int,int,int) ;
 int RARCH_WARN (char*,int,...) ;
 TYPE_1__* cur ;
 int set_gpio (int,int) ;
 scalar_t__ setup_gpio (int) ;

__attribute__((used)) static void rpi_set(int led, int state)
{
   int gpio = 0;

   if((led < 0) || (led >= MAX_LEDS))
   {
      RARCH_WARN("[LED]: invalid led %d\n", led);
      return;
   }

   gpio = cur->map[led];
   if(gpio <= 0)
      return;

   if(cur->setup[led] == 0)
   {
      RARCH_LOG("[LED]: rpi setup led %d gpio %d\n",
            led, gpio, state);
      cur->setup[led] = setup_gpio(gpio);
      if(cur->setup[led] <= 0)
      {
         RARCH_WARN("[LED]: failed to setup led %d gpio %d\n",
               led, gpio);
      }
   }
   if(cur->setup[led] > 0)
   {
      RARCH_LOG("[LED]: rpi LED driver set led %d gpio %d = %d\n",
            led, gpio, state);
      set_gpio(gpio, state);
   }
}
