
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int int16_t ;
struct TYPE_5__ {int sThumbLX; int sThumbLY; int sThumbRX; int sThumbRY; int bLeftTrigger; int bRightTrigger; } ;
typedef TYPE_2__ XINPUT_GAMEPAD ;
struct TYPE_4__ {TYPE_2__ Gamepad; } ;
struct TYPE_6__ {TYPE_1__ xstate; } ;


 int AXIS_NEG_GET (scalar_t__) ;
 scalar_t__ AXIS_NONE ;
 int AXIS_POS_GET (scalar_t__) ;
 unsigned int DEFAULT_MAX_PADS ;
 TYPE_3__* g_xinput_states ;

__attribute__((used)) static int16_t xdk_joypad_axis(unsigned port_num, uint32_t joyaxis)
{
   int val = 0;
   int axis = -1;
   bool is_neg = 0;
   bool is_pos = 0;
   XINPUT_GAMEPAD *pad = ((void*)0);

   if (joyaxis == AXIS_NONE || port_num >= DEFAULT_MAX_PADS)
      return 0;

   if (AXIS_NEG_GET(joyaxis) <= 3)
   {
      axis = AXIS_NEG_GET(joyaxis);
      is_neg = 1;
   }
   else if (AXIS_POS_GET(joyaxis) <= 5)
   {
      axis = AXIS_POS_GET(joyaxis);
      is_pos = 1;
   }

   pad = &(g_xinput_states[port_num].xstate.Gamepad);

   switch (axis)
   {
      case 0:
         val = pad->sThumbLX;
         break;
      case 1:
         val = pad->sThumbLY;
         break;
      case 2:
         val = pad->sThumbRX;
         break;
      case 3:
         val = pad->sThumbRY;
         break;
      case 4:



         break;
      case 5:



         break;
   }

   if (is_neg && val > 0)
      val = 0;
   else if (is_pos && val < 0)
      val = 0;


   if (val == -32768)
      val = -32767;

   return val;
}
