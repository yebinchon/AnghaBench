
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ident; } ;
typedef int SceCtrlPortInfo ;


 unsigned int DEFAULT_MAX_PADS ;
 scalar_t__ SCE_KERNEL_MODEL_VITATV ;
 int SCE_TOUCH_PORT_BACK ;
 int SCE_TOUCH_PORT_FRONT ;
 int SCE_TOUCH_SAMPLING_STATE_START ;
 int curr_ctrl_info ;
 int input_autoconfigure_connect (int ,int *,int ,unsigned int,int ,int ) ;
 int memcpy (int *,int *,int) ;
 int old_ctrl_info ;
 scalar_t__ psp2_model ;
 TYPE_1__ psp_joypad ;
 int psp_joypad_name (unsigned int) ;
 int sceCtrlGetControllerPortInfo (int *) ;
 scalar_t__ sceKernelGetModelForCDialog () ;
 int sceTouchSetSamplingState (int ,int ) ;

__attribute__((used)) static bool psp_joypad_init(void *data)
{
   unsigned i;
   unsigned players_count = DEFAULT_MAX_PADS;

   (void)data;
   for (i = 0; i < players_count; i++)
      input_autoconfigure_connect(
            psp_joypad_name(i),
            ((void*)0),
            psp_joypad.ident,
            i,
            0,
            0
            );

   return 1;
}
