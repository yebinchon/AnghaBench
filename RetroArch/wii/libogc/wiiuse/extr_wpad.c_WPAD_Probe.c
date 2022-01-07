
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
struct TYPE_6__ {TYPE_1__ exp; } ;
typedef TYPE_2__ wiimote ;
typedef int u32 ;
typedef size_t s32 ;


 scalar_t__ WIIMOTE_IS_SET (TYPE_2__*,int ) ;
 int WIIMOTE_STATE_CONNECTED ;
 int WIIMOTE_STATE_EXP ;
 int WIIMOTE_STATE_HANDSHAKE_COMPLETE ;
 size_t WPAD_ERR_NONE ;
 size_t WPAD_ERR_NOT_READY ;
 size_t WPAD_ERR_NO_CONTROLLER ;

 int WPAD_EXP_NONE ;

 scalar_t__ WPAD_STATE_DISABLED ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 TYPE_2__** __wpads ;
 scalar_t__ __wpads_inited ;

s32 WPAD_Probe(s32 chan,u32 *type)
{
 s32 ret;
 u32 level,dev;
 wiimote *wm = ((void*)0);



 _CPU_ISR_Disable(level);
 if(__wpads_inited==WPAD_STATE_DISABLED) {
  _CPU_ISR_Restore(level);
  return WPAD_ERR_NOT_READY;
 }

 wm = __wpads[chan];
 if(wm && WIIMOTE_IS_SET(wm,WIIMOTE_STATE_CONNECTED)) {
  if(WIIMOTE_IS_SET(wm,WIIMOTE_STATE_HANDSHAKE_COMPLETE)) {
   dev = WPAD_EXP_NONE;
   if(WIIMOTE_IS_SET(wm,WIIMOTE_STATE_EXP)) {
    switch(wm->exp.type) {
     case 128:
     case 129:
      dev = wm->exp.type;
      break;
    }
   }
   if(type!=((void*)0)) *type = dev;
   ret = WPAD_ERR_NONE;
  } else
   ret = WPAD_ERR_NOT_READY;
 } else
  ret = WPAD_ERR_NO_CONTROLLER;
 _CPU_ISR_Restore(level);

 return ret;
}
