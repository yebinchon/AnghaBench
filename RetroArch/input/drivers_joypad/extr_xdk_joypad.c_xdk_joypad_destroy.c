
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xinput_joypad_state ;


 unsigned int DEFAULT_MAX_PADS ;
 int XInputClose (scalar_t__) ;
 int * g_xinput_states ;
 scalar_t__* gamepads ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void xdk_joypad_destroy(void)
{
   unsigned i;

   for (i = 0; i < DEFAULT_MAX_PADS; i++)
   {
      memset(&g_xinput_states[i], 0, sizeof(xinput_joypad_state));





   }
}
