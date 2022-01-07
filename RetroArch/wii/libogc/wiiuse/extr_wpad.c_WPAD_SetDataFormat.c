
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int s32 ;
struct TYPE_2__ {int data_fmt; } ;


 int WPAD_CHAN_0 ;
 int WPAD_CHAN_ALL ;
 int WPAD_ERR_BADVALUE ;
 int WPAD_ERR_BAD_CHANNEL ;
 int WPAD_ERR_NONE ;
 int WPAD_ERR_NOT_READY ;



 int WPAD_MAX_WIIMOTES ;
 scalar_t__ WPAD_STATE_DISABLED ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __wpad_setfmt (int) ;
 int ** __wpads ;
 scalar_t__ __wpads_inited ;
 TYPE_1__* __wpdcb ;

s32 WPAD_SetDataFormat(s32 chan, s32 fmt)
{
 u32 level;
 s32 ret;
 int i;

 if(chan == WPAD_CHAN_ALL) {
  for(i=WPAD_CHAN_0; i<WPAD_MAX_WIIMOTES; i++)
   if((ret = WPAD_SetDataFormat(i, fmt)) < WPAD_ERR_NONE)
    return ret;
  return WPAD_ERR_NONE;
 }

 if(chan<WPAD_CHAN_0 || chan>=WPAD_MAX_WIIMOTES) return WPAD_ERR_BAD_CHANNEL;

 _CPU_ISR_Disable(level);
 if(__wpads_inited==WPAD_STATE_DISABLED) {
  _CPU_ISR_Restore(level);
  return WPAD_ERR_NOT_READY;
 }

 if(__wpads[chan]!=((void*)0)) {
  switch(fmt) {
   case 130:
   case 129:
   case 128:
    __wpdcb[chan].data_fmt = fmt;
    __wpad_setfmt(chan);
    break;
   default:
    _CPU_ISR_Restore(level);
    return WPAD_ERR_BADVALUE;
  }
 }
 _CPU_ISR_Restore(level);
 return WPAD_ERR_NONE;
}
