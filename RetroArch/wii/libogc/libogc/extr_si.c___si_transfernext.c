
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
typedef scalar_t__ s64 ;
struct TYPE_2__ {int chan; scalar_t__ fire; int callback; int in_bytes; int in; int out_bytes; int out; } ;


 int SYS_CancelAlarm (int ) ;
 int __si_transfer (int,int ,int ,int ,int ,int ) ;
 scalar_t__ gettime () ;
 int * si_alarm ;
 TYPE_1__* sipacket ;

__attribute__((used)) static void __si_transfernext(u32 chan)
{
 u32 cnt;
 u64 now;
 s64 diff;
 cnt = 0;
 while(cnt<4) {
  chan++;
  chan %= 4;
  if(sipacket[chan].chan!=-1) {
   now = gettime();
   diff = (now - sipacket[chan].fire);
   if(diff>=0) {
    if(!__si_transfer(sipacket[chan].chan,sipacket[chan].out,sipacket[chan].out_bytes,sipacket[chan].in,sipacket[chan].in_bytes,sipacket[chan].callback)) break;
    SYS_CancelAlarm(si_alarm[chan]);
    sipacket[chan].chan = -1;
   }
  }
  cnt++;
 }
}
