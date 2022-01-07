
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t s32 ;


 int LWP_ThreadBroadcast (int ) ;
 int * wait_exi_queue ;

__attribute__((used)) static s32 __usbgecko_exi_unlock(s32 chan,s32 dev)
{
 LWP_ThreadBroadcast(wait_exi_queue[chan]);
 return 1;
}
