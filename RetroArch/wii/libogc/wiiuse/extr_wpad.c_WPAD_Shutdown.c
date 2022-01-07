
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct _wpad_cb {int sound_alarm; } ;
typedef size_t s32 ;


 int BTE_Shutdown () ;
 int SYS_RemoveAlarm (int ) ;
 size_t WPAD_MAX_WIIMOTES ;
 int WPAD_STATE_DISABLED ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int __wiiuse_sensorbar_enable (int ) ;
 int __wpad_disconnect (struct _wpad_cb*) ;
 int __wpad_timer ;
 scalar_t__ __wpads_active ;
 int __wpads_inited ;
 struct _wpad_cb* __wpdcb ;
 int usleep (int) ;

void WPAD_Shutdown()
{
 s32 i;
 u32 level;
 u32 cnt = 0;
 struct _wpad_cb *wpdcb = ((void*)0);

 _CPU_ISR_Disable(level);

 __wpads_inited = WPAD_STATE_DISABLED;
 SYS_RemoveAlarm(__wpad_timer);
 for(i=0;i<WPAD_MAX_WIIMOTES;i++) {
  wpdcb = &__wpdcb[i];



  __wpad_disconnect(wpdcb);
 }

 __wiiuse_sensorbar_enable(0);
 _CPU_ISR_Restore(level);

 while(__wpads_active) {
  usleep(50);
  if(++cnt > 3000) break;
 }

 BTE_Shutdown();
}
