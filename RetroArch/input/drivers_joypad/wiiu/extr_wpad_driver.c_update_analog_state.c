
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_5__ {int y; int x; } ;
struct TYPE_6__ {int y; int x; } ;
struct TYPE_7__ {TYPE_1__ rightStick; TYPE_2__ leftStick; } ;
typedef TYPE_3__ VPADStatus ;


 size_t RETRO_DEVICE_ID_ANALOG_X ;
 size_t RETRO_DEVICE_ID_ANALOG_Y ;
 size_t RETRO_DEVICE_INDEX_ANALOG_LEFT ;
 size_t RETRO_DEVICE_INDEX_ANALOG_RIGHT ;
 int WIIU_READ_STICK (int ) ;

__attribute__((used)) static void update_analog_state(int16_t state[3][2], VPADStatus *vpad)
{
   state[RETRO_DEVICE_INDEX_ANALOG_LEFT] [RETRO_DEVICE_ID_ANALOG_X] = WIIU_READ_STICK(vpad->leftStick.x);
   state[RETRO_DEVICE_INDEX_ANALOG_LEFT] [RETRO_DEVICE_ID_ANALOG_Y] = WIIU_READ_STICK(vpad->leftStick.y);
   state[RETRO_DEVICE_INDEX_ANALOG_RIGHT][RETRO_DEVICE_ID_ANALOG_X] = WIIU_READ_STICK(vpad->rightStick.x);
   state[RETRO_DEVICE_INDEX_ANALOG_RIGHT][RETRO_DEVICE_ID_ANALOG_Y] = WIIU_READ_STICK(vpad->rightStick.y);
}
