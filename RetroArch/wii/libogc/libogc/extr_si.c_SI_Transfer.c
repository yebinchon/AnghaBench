
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef void* u32 ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef scalar_t__ s64 ;
typedef size_t s32 ;
struct TYPE_4__ {size_t chan; } ;
struct TYPE_3__ {int chan; scalar_t__ fire; int callback; void* in_bytes; void* in; void* out_bytes; void* out; } ;
typedef int SICallback ;


 int SYS_SetAlarm (int ,struct timespec*,int ,int *) ;
 int _CPU_ISR_Disable (void*) ;
 int _CPU_ISR_Restore (void*) ;
 int __si_alarmhandler ;
 scalar_t__ __si_transfer (size_t,void*,void*,void*,void*,int ) ;
 scalar_t__ gettime () ;
 scalar_t__ microsecs_to_ticks (void*) ;
 int * si_alarm ;
 TYPE_2__ sicntrl ;
 TYPE_1__* sipacket ;
 int ticks_to_nanosecs (scalar_t__) ;
 scalar_t__* xferTime ;

u32 SI_Transfer(s32 chan,void *out,u32 out_len,void *in,u32 in_len,SICallback cb,u32 us_delay)
{
 u32 ret = 0;
 u32 level;
 s64 diff;
 u64 now,fire;
 struct timespec tb;
 _CPU_ISR_Disable(level);
 if(sipacket[chan].chan==-1 && sicntrl.chan!=chan) {
  ret = 1;
  fire = now = gettime();
  if(us_delay) fire = xferTime[chan]+microsecs_to_ticks(us_delay);
  diff = (now - fire);
  if(diff<0) {
   tb.tv_sec = 0;
   tb.tv_nsec = ticks_to_nanosecs((fire - now));
   SYS_SetAlarm(si_alarm[chan],&tb,__si_alarmhandler,((void*)0));
  } else if(__si_transfer(chan,out,out_len,in,in_len,cb)) {
   _CPU_ISR_Restore(level);
   return ret;
  }
  sipacket[chan].chan = chan;
  sipacket[chan].out = out;
  sipacket[chan].out_bytes = out_len;
  sipacket[chan].in = in;
  sipacket[chan].in_bytes = in_len;
  sipacket[chan].callback = cb;
  sipacket[chan].fire = fire;
 }
 _CPU_ISR_Restore(level);
 return ret;
}
