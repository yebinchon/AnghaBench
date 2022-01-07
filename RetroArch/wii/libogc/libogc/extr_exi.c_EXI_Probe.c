
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t s32 ;
struct TYPE_3__ {scalar_t__ exi_idtime; } ;
typedef TYPE_1__ exibus_priv ;


 int EXI_DEVICE_0 ;
 scalar_t__ EXI_GetID (size_t,int ,int *) ;
 size_t __exi_probe (size_t) ;
 TYPE_1__* eximap ;

s32 EXI_Probe(s32 nChn)
{
 s32 ret;
 u32 id;
 exibus_priv *exi = &eximap[nChn];
 if((ret=__exi_probe(nChn))==1) {
  if(exi->exi_idtime==0) {
   if(EXI_GetID(nChn,EXI_DEVICE_0,&id)==0) ret = 0;
  }
 }
 return ret;
}
