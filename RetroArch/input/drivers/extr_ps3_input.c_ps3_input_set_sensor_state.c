
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum retro_sensor_action { ____Placeholder_retro_sensor_action } retro_sensor_action ;
struct TYPE_3__ {int* device_capability; } ;
typedef TYPE_1__ CellPadInfo2 ;


 int CELL_PAD_CAPABILITY_SENSOR_MODE ;
 int CELL_PAD_SETTING_SENSOR_ON ;


 int cellPadGetInfo2 (TYPE_1__*) ;
 int cellPadSetPortSetting (unsigned int,int ) ;

__attribute__((used)) static bool ps3_input_set_sensor_state(void *data, unsigned port,
      enum retro_sensor_action action, unsigned event_rate)
{
   CellPadInfo2 pad_info;
   (void)event_rate;

   switch (action)
   {
      case 128:
         cellPadGetInfo2(&pad_info);
         if ((pad_info.device_capability[port]
                  & CELL_PAD_CAPABILITY_SENSOR_MODE)
               != CELL_PAD_CAPABILITY_SENSOR_MODE)
            return 0;

         cellPadSetPortSetting(port, CELL_PAD_SETTING_SENSOR_ON);
         return 1;
      case 129:
         cellPadSetPortSetting(port, 0);
         return 1;

      default:
         return 0;
   }
}
