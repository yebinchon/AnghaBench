
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ max_latency; } ;
typedef TYPE_1__ rsound_t ;
typedef int int64_t ;


 int RSD_DEBUG (char*,int) ;
 int retro_sleep (int) ;
 int rsd_delay_ms (TYPE_1__*) ;

void rsd_delay_wait(rsound_t *rd)
{







   if ( rd->max_latency > 0 )
   {

      int latency_ms = rsd_delay_ms(rd);


      if ( rd->max_latency < latency_ms )
      {
         int64_t sleep_ms = latency_ms - rd->max_latency;
         RSD_DEBUG("[RSound] Delay wait: %d ms.\n", (int)sleep_ms);
         retro_sleep((int)sleep_ms);
      }
   }
}
