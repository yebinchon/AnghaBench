
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int int16_t ;


 size_t RETRO_DEVICE_ID_ANALOG_X ;
 size_t RETRO_DEVICE_ID_ANALOG_Y ;
 size_t RETRO_DEVICE_INDEX_ANALOG_LEFT ;
 size_t RETRO_DEVICE_INDEX_ANALOG_RIGHT ;






 size_t WIIU_DEVICE_INDEX_TOUCHPAD ;
 int clamp_axis (int ,int) ;

__attribute__((used)) static int16_t wiiu_pad_get_axis_value(int32_t axis,
      int16_t state[3][2], bool is_negative)
{
   int16_t value = 0;

   switch(axis)
   {
      case 133:
         value = state[RETRO_DEVICE_INDEX_ANALOG_LEFT][RETRO_DEVICE_ID_ANALOG_X];
         break;
      case 132:
         value = state[RETRO_DEVICE_INDEX_ANALOG_LEFT][RETRO_DEVICE_ID_ANALOG_Y];
         break;
      case 131:
         value = state[RETRO_DEVICE_INDEX_ANALOG_RIGHT][RETRO_DEVICE_ID_ANALOG_X];
         break;
      case 130:
         value = state[RETRO_DEVICE_INDEX_ANALOG_RIGHT][RETRO_DEVICE_ID_ANALOG_Y];
         break;
      case 129:
         return state[WIIU_DEVICE_INDEX_TOUCHPAD][RETRO_DEVICE_ID_ANALOG_X];
      case 128:
         return state[WIIU_DEVICE_INDEX_TOUCHPAD][RETRO_DEVICE_ID_ANALOG_Y];
   }

   return clamp_axis(value, is_negative);
}
