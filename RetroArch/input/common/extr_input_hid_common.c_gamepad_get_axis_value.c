
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {int axis; int is_negative; } ;
typedef TYPE_1__ axis_data ;






 size_t RETRO_DEVICE_ID_ANALOG_X ;
 size_t RETRO_DEVICE_ID_ANALOG_Y ;
 size_t RETRO_DEVICE_INDEX_ANALOG_LEFT ;
 size_t RETRO_DEVICE_INDEX_ANALOG_RIGHT ;
 int gamepad_clamp_axis (int ,int ) ;

int16_t gamepad_get_axis_value(int16_t state[3][2], axis_data *data)
{
   int16_t value = 0;

   if(!data)
      return 0;

   switch(data->axis)
   {
      case 131:
         value = state[RETRO_DEVICE_INDEX_ANALOG_LEFT][RETRO_DEVICE_ID_ANALOG_X];
         break;
      case 130:
         value = state[RETRO_DEVICE_INDEX_ANALOG_LEFT][RETRO_DEVICE_ID_ANALOG_Y];
         break;
      case 129:
         value = state[RETRO_DEVICE_INDEX_ANALOG_RIGHT][RETRO_DEVICE_ID_ANALOG_X];
         break;
      case 128:
         value = state[RETRO_DEVICE_INDEX_ANALOG_RIGHT][RETRO_DEVICE_ID_ANALOG_Y];
         break;
   }

   return gamepad_clamp_axis(value, data->is_negative);
}
