
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int* sixaxis_handles_count; int ** sixaxis_handles; TYPE_1__* joypad; } ;
typedef TYPE_2__ switch_input_t ;
struct TYPE_4__ {int (* destroy ) () ;} ;


 unsigned int DEFAULT_MAX_PADS ;
 int free (TYPE_2__*) ;
 int hidExit () ;
 int hidStopSixAxisSensor (int ) ;
 int stub1 () ;

__attribute__((used)) static void switch_input_free_input(void *data)
{
   unsigned i,j;
   switch_input_t *sw = (switch_input_t*) data;

   if (sw)
   {
      if(sw->joypad)
         sw->joypad->destroy();

      for(i = 0; i < DEFAULT_MAX_PADS; i++)
         if(sw->sixaxis_handles_count[i] > 0)
            for(j = 0; j < sw->sixaxis_handles_count[i]; j++)
               hidStopSixAxisSensor(sw->sixaxis_handles[i][j]);

      free(sw);
   }




}
