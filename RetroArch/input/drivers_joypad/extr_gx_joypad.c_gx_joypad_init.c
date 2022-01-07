
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFAULT_MAX_PADS ;
 int PAD_Init () ;
 int SYS_SetPowerCallback (int ) ;
 int SYS_SetResetCallback (int ) ;
 int WPADInit () ;
 int WPAD_CHAN_ALL ;
 int WPAD_EXP_NOCONTROLLER ;
 int WPAD_FMT_BTNS_ACC_IR ;
 int WPAD_SetDataFormat (int ,int ) ;
 int WPAD_SetVRes (int ,int,int) ;
 int gx_joypad_poll () ;
 int * pad_type ;
 int power_callback ;
 int reset_cb ;

__attribute__((used)) static bool gx_joypad_init(void *data)
{
   int i;
   SYS_SetResetCallback(reset_cb);




   (void)data;

   for (i = 0; i < DEFAULT_MAX_PADS; i++)
      pad_type[i] = WPAD_EXP_NOCONTROLLER;

   PAD_Init();







   gx_joypad_poll();

   return 1;
}
