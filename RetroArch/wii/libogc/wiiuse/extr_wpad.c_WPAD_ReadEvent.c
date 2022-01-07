
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct accel_t {int dummy; } ;
struct _wpad_cb {size_t queue_length; scalar_t__ queue_full; size_t queue_head; int lstate; int * queue_int; int * queue_ext; } ;
typedef size_t s32 ;
typedef int WPADData ;
struct TYPE_4__ {struct accel_t accel_calib; } ;


 size_t EVENTQUEUE_LENGTH ;
 size_t WIIMOTE_IS_FLAG_SET (TYPE_1__*,int ) ;
 scalar_t__ WIIMOTE_IS_SET (TYPE_1__*,int ) ;
 int WIIMOTE_STATE_CONNECTED ;
 int WIIMOTE_STATE_HANDSHAKE_COMPLETE ;
 int WIIUSE_SMOOTHING ;
 size_t WPAD_ERR_NOT_READY ;
 size_t WPAD_ERR_NO_CONTROLLER ;
 size_t WPAD_ERR_QUEUE_EMPTY ;
 scalar_t__ WPAD_STATE_DISABLED ;
 int _CPU_ISR_Disable (size_t) ;
 int _CPU_ISR_Restore (size_t) ;
 int __wpad_calc_data (int *,int *,struct accel_t*,size_t) ;
 TYPE_1__** __wpads ;
 scalar_t__ __wpads_inited ;
 struct _wpad_cb* __wpdcb ;

s32 WPAD_ReadEvent(s32 chan, WPADData *data)
{
 u32 level;
 u32 maxbufs,smoothed = 0;
 struct accel_t *accel_calib = ((void*)0);
 struct _wpad_cb *wpdcb = ((void*)0);
 WPADData *lstate = ((void*)0),*wpadd = ((void*)0);



 _CPU_ISR_Disable(level);
 if(__wpads_inited==WPAD_STATE_DISABLED) {
  _CPU_ISR_Restore(level);
  return WPAD_ERR_NOT_READY;
 }

 if(__wpads[chan] && WIIMOTE_IS_SET(__wpads[chan],WIIMOTE_STATE_CONNECTED)) {
  if(WIIMOTE_IS_SET(__wpads[chan],WIIMOTE_STATE_HANDSHAKE_COMPLETE)) {
   wpdcb = &__wpdcb[chan];







         {
    maxbufs = EVENTQUEUE_LENGTH;
    wpadd = wpdcb->queue_int;
   }
   if(wpdcb->queue_full == 0) {
    _CPU_ISR_Restore(level);
    return WPAD_ERR_QUEUE_EMPTY;
   }
   if(data)
    *data = wpadd[wpdcb->queue_head];
   wpdcb->queue_head++;
   wpdcb->queue_head %= maxbufs;
   wpdcb->queue_full--;
   lstate = &wpdcb->lstate;
   accel_calib = &__wpads[chan]->accel_calib;
   smoothed = WIIMOTE_IS_FLAG_SET(__wpads[chan], WIIUSE_SMOOTHING);
  } else {
   _CPU_ISR_Restore(level);
   return WPAD_ERR_NOT_READY;
  }
 } else {
  _CPU_ISR_Restore(level);
  return WPAD_ERR_NO_CONTROLLER;
 }

 _CPU_ISR_Restore(level);
 if(data)
  __wpad_calc_data(data,lstate,accel_calib,smoothed);
 return 0;
}
