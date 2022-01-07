
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned int* gamepads; } ;
typedef TYPE_2__ xdk_input_t ;
typedef void* uint16_t ;
typedef enum retro_rumble_effect { ____Placeholder_retro_rumble_effect } retro_rumble_effect ;
struct TYPE_6__ {void* wRightMotorSpeed; void* wLeftMotorSpeed; } ;
struct TYPE_8__ {TYPE_1__ Rumble; void* wRightMotorSpeed; void* wLeftMotorSpeed; } ;
typedef TYPE_3__ XINPUT_VIBRATION ;
typedef TYPE_3__ XINPUT_FEEDBACK ;


 scalar_t__ ERROR_SUCCESS ;
 int RETRO_RUMBLE_STRONG ;
 int RETRO_RUMBLE_WEAK ;
 scalar_t__ XInputSetState (unsigned int,TYPE_3__*) ;

__attribute__((used)) static bool xdk_input_set_rumble(void *data, unsigned port,
      enum retro_rumble_effect effect, uint16_t strength)
{





   xdk_input_t *xdk = (xdk_input_t*)data;
   bool val = 0;

   (void)xdk;
   return val;
}
