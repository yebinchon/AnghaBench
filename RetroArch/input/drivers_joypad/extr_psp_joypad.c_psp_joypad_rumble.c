
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
typedef enum retro_rumble_effect { ____Placeholder_retro_rumble_effect } retro_rumble_effect ;
struct TYPE_5__ {int * port; } ;
struct TYPE_4__ {int small; void* large; } ;


 void* LERP (int,int,int) ;





 scalar_t__ SCE_KERNEL_MODEL_VITATV ;
 TYPE_1__* actuators ;
 TYPE_2__ curr_ctrl_info ;
 scalar_t__ psp2_model ;
 int sceCtrlSetActuator (unsigned int,TYPE_1__*) ;

__attribute__((used)) static bool psp_joypad_rumble(unsigned pad,
      enum retro_rumble_effect effect, uint16_t strength)
{
   return 0;

}
