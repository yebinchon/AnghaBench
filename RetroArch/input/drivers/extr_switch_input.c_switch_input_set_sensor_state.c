
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* sixaxis_handles_count; int ** sixaxis_handles; } ;
typedef TYPE_1__ switch_input_t ;
typedef enum retro_sensor_action { ____Placeholder_retro_sensor_action } retro_sensor_action ;


 unsigned int CONTROLLER_HANDHELD ;
 unsigned int DEFAULT_MAX_PADS ;






 int TYPE_HANDHELD ;
 int TYPE_JOYCON_PAIR ;
 int TYPE_PROCONTROLLER ;
 int appletIsIlluminanceAvailable (int*) ;
 int hidGetSixAxisSensorHandles (int *,int,unsigned int,int ) ;
 int hidStartSixAxisSensor (int ) ;

__attribute__((used)) static bool switch_input_set_sensor_state(void *data, unsigned port,
      enum retro_sensor_action action, unsigned event_rate)
{
   return 0;
}
