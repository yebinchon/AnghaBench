
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int LWP_ThreadBroadcast (int ) ;
 int time_exi_wait ;

__attribute__((used)) static s32 __time_exi_unlock(s32 chn,s32 dev)
{
 LWP_ThreadBroadcast(time_exi_wait);
 return 1;
}
