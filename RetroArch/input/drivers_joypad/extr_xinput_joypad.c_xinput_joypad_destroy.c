
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xinput_joypad_state ;
struct TYPE_2__ {int (* destroy ) () ;} ;


 TYPE_1__ dinput_joypad ;
 int dylib_close (int *) ;
 int * g_XInputGetStateEx ;
 int * g_XInputSetState ;
 int g_xinput_block_pads ;
 int * g_xinput_dll ;
 int * g_xinput_states ;
 int memset (int *,int ,int) ;
 int stub1 () ;

__attribute__((used)) static void xinput_joypad_destroy(void)
{
   unsigned i;

   for (i = 0; i < 4; ++i)
      memset(&g_xinput_states[i], 0, sizeof(xinput_joypad_state));






   g_XInputGetStateEx = ((void*)0);
   g_XInputSetState = ((void*)0);






}
