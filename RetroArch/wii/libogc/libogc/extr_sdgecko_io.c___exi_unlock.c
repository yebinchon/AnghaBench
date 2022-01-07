
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t s32 ;


 int LWP_ThreadBroadcast (int ) ;
 int * _ioEXILock ;

__attribute__((used)) static s32 __exi_unlock(s32 chn,s32 dev)
{
 LWP_ThreadBroadcast(_ioEXILock[chn]);
 return 1;
}
