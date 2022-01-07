
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiimote_t {int unid; } ;
struct _wpad_cb {int queue_length; size_t queue_tail; int queue_full; int queue_head; int idle_time; int * queue_int; int lstate; int * queue_ext; struct wiimote_t* wm; int speaker_enabled; int thresh; int dropped_events; } ;
typedef int s32 ;
typedef int WPADData ;


 int CONF_GetIRSensitivity () ;
 int CONF_GetSensorBarPosition () ;
 int EVENTQUEUE_LENGTH ;
 int WIIMOTE_LED_1 ;




 int WPAD_BALANCE_BOARD ;
 int __wpad_read_wiimote (struct wiimote_t*,int *,int*,int *) ;
 int __wpad_setfmt (int) ;
 int __wpads_active ;
 int __wpads_used ;
 struct _wpad_cb* __wpdcb ;
 int memset (int *,int ,int) ;
 int wiiuse_set_ir_position (struct wiimote_t*,int) ;
 int wiiuse_set_ir_sensitivity (struct wiimote_t*,int ) ;
 int wiiuse_set_leds (struct wiimote_t*,int,int *) ;
 int wiiuse_set_speaker (struct wiimote_t*,int ) ;
 int * wpaddata ;

__attribute__((used)) static void __wpad_eventCB(struct wiimote_t *wm,s32 event)
{
 s32 chan;
 u32 maxbufs;
 WPADData *wpadd = ((void*)0);
 struct _wpad_cb *wpdcb = ((void*)0);

 switch(event) {
  case 129:
   chan = wm->unid;
   wpdcb = &__wpdcb[chan];
         {
    maxbufs = EVENTQUEUE_LENGTH;
    wpadd = &(wpdcb->queue_int[wpdcb->queue_tail]);
   }
   if(wpdcb->queue_full == maxbufs) {
    wpdcb->queue_head++;
    wpdcb->queue_head %= maxbufs;
    wpdcb->dropped_events++;
   } else {
    wpdcb->queue_full++;
   }

   __wpad_read_wiimote(wm, wpadd, &wpdcb->idle_time, &wpdcb->thresh);

   wpdcb->queue_tail++;
   wpdcb->queue_tail %= maxbufs;

   break;
  case 128:
   break;
  case 131:
   chan = wm->unid;
   wpdcb = &__wpdcb[chan];
   wpdcb->wm = wm;
   wpdcb->queue_head = 0;
   wpdcb->queue_tail = 0;
   wpdcb->queue_full = 0;
   wpdcb->idle_time = 0;
   memset(&wpdcb->lstate,0,sizeof(WPADData));
   memset(&wpaddata[chan],0,sizeof(WPADData));
   memset(wpdcb->queue_int,0,(sizeof(WPADData)*EVENTQUEUE_LENGTH));
   wiiuse_set_ir_position(wm,(CONF_GetSensorBarPosition()^1));
   wiiuse_set_ir_sensitivity(wm,CONF_GetIRSensitivity());
   wiiuse_set_leds(wm,(WIIMOTE_LED_1<<(chan%WPAD_BALANCE_BOARD)),((void*)0));



   __wpad_setfmt(chan);
   __wpads_active |= (0x01<<chan);
   break;
  case 130:
   chan = wm->unid;
   wpdcb = &__wpdcb[chan];
   wpdcb->wm = wm;
   wpdcb->queue_head = 0;
   wpdcb->queue_tail = 0;
   wpdcb->queue_full = 0;
   wpdcb->queue_length = 0;



   wpdcb->idle_time = -1;
   memset(&wpdcb->lstate,0,sizeof(WPADData));
   memset(&wpaddata[chan],0,sizeof(WPADData));
   memset(wpdcb->queue_int,0,(sizeof(WPADData)*EVENTQUEUE_LENGTH));
   __wpads_active &= ~(0x01<<chan);
   __wpads_used &= ~(0x01<<chan);
   break;
  default:
   break;
 }
}
