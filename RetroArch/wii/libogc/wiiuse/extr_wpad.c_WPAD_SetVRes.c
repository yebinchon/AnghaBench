
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int WPAD_CHAN_0 ;
 int WPAD_CHAN_ALL ;
 int WPAD_ERR_BAD_CHANNEL ;
 int WPAD_ERR_NONE ;
 int WPAD_ERR_NOT_READY ;
 int WPAD_MAX_WIIMOTES ;
 scalar_t__ WPAD_STATE_DISABLED ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int ** __wpads ;
 scalar_t__ __wpads_inited ;
 int wiiuse_set_ir_vres (int *,int ,int ) ;

s32 WPAD_SetVRes(s32 chan,u32 xres,u32 yres)
{
 u32 level;
 s32 ret;
 int i;

 if(chan == WPAD_CHAN_ALL) {
  for(i=WPAD_CHAN_0; i<WPAD_MAX_WIIMOTES; i++)
   if((ret = WPAD_SetVRes(i, xres, yres)) < WPAD_ERR_NONE)
    return ret;
  return WPAD_ERR_NONE;
 }

 if(chan<WPAD_CHAN_0 || chan>=WPAD_MAX_WIIMOTES) return WPAD_ERR_BAD_CHANNEL;

 _CPU_ISR_Disable(level);
 if(__wpads_inited==WPAD_STATE_DISABLED) {
  _CPU_ISR_Restore(level);
  return WPAD_ERR_NOT_READY;
 }

 if(__wpads[chan]!=((void*)0))
  wiiuse_set_ir_vres(__wpads[chan],xres,yres);

 _CPU_ISR_Restore(level);
 return WPAD_ERR_NONE;
}
