
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAD_Init () ;
 int WPAD_CHAN_ALL ;
 int WPAD_FMT_BTNS_ACC_IR ;
 int WPAD_Init () ;
 int WPAD_SetDataFormat (int ,int ) ;
 int WPAD_SetIdleTimeout (int) ;
 int WPAD_SetVRes (int ,int,int) ;

void gx_input_Init(void)
{
  PAD_Init();






}
