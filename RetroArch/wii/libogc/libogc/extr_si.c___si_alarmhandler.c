
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ syswd_t ;
struct TYPE_2__ {int chan; int callback; int in_bytes; int in; int out_bytes; int out; } ;


 scalar_t__ __si_transfer (int,int ,int ,int ,int ,int ) ;
 scalar_t__* si_alarm ;
 TYPE_1__* sipacket ;

__attribute__((used)) static void __si_alarmhandler(syswd_t thealarm,void *cbarg)
{
 u32 chn = 0;

 while(chn<4)
   {
  if(si_alarm[chn]==thealarm)
         break;
  chn++;
 }
 if(chn==4)
      return;

 if(sipacket[chn].chan!=-1) {
  if(__si_transfer(sipacket[chn].chan,sipacket[chn].out,sipacket[chn].out_bytes,sipacket[chn].in,sipacket[chn].in_bytes,sipacket[chn].callback)) sipacket[chn].chan = -1;
 }
}
