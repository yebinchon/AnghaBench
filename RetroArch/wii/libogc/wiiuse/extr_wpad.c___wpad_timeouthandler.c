
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int syswd_t ;
struct wiimote_t {int dummy; } ;
struct _wpad_cb {scalar_t__ idle_time; struct wiimote_t* wm; } ;
typedef size_t s32 ;


 scalar_t__ WIIMOTE_IS_SET (struct wiimote_t*,int ) ;
 int WIIMOTE_STATE_CONNECTED ;
 size_t WPAD_MAX_WIIMOTES ;
 scalar_t__ __wpad_idletimeout ;
 int __wpads_active ;
 struct _wpad_cb* __wpdcb ;
 int _thread_dispatch_disable_level ;
 int wiiuse_disconnect (struct wiimote_t*) ;

__attribute__((used)) static void __wpad_timeouthandler(syswd_t alarm,void *cbarg)
{
 s32 i;
 struct wiimote_t *wm = ((void*)0);
 struct _wpad_cb *wpdcb = ((void*)0);

 if(!__wpads_active) return;

   ++_thread_dispatch_disable_level;
 for(i=0;i<WPAD_MAX_WIIMOTES;i++) {
  wpdcb = &__wpdcb[i];
  wm = wpdcb->wm;
  if(wm && WIIMOTE_IS_SET(wm,WIIMOTE_STATE_CONNECTED)) {
   wpdcb->idle_time++;
   if(wpdcb->idle_time>=__wpad_idletimeout) {
    wpdcb->idle_time = 0;
    wiiuse_disconnect(wm);
   }
  }
 }
   --_thread_dispatch_disable_level;
}
