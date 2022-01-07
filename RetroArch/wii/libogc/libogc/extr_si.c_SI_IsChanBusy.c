
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t s32 ;
struct TYPE_4__ {size_t chan; } ;
struct TYPE_3__ {int chan; } ;


 TYPE_2__ sicntrl ;
 TYPE_1__* sipacket ;

u32 SI_IsChanBusy(s32 chan)
{
 u32 ret = 0;

 if(sipacket[chan].chan!=-1 || sicntrl.chan==chan) ret = 1;

 return ret;
}
