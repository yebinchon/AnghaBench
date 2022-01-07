
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ perf0Mode; } ;


 scalar_t__ GX_PERF0_CLIP_RATIO ;
 scalar_t__ GX_PERF0_NONE ;
 scalar_t__ GX_PERF0_VERTICES ;
 int _SHIFTL (int,int,int) ;
 TYPE_1__* __gx ;
 int* _cpReg ;

void GX_ReadGPMetric(u32 *cnt0,u32 *cnt1)
{
 u32 tmp,reg1,reg2;

 reg1 = (_SHIFTL(_cpReg[33],16,16))|(_cpReg[32]&0xffff);
 reg2 = (_SHIFTL(_cpReg[35],16,16))|(_cpReg[34]&0xffff);



 *cnt0 = 0;
 if(__gx->perf0Mode==GX_PERF0_CLIP_RATIO) {
  tmp = reg2*1000;
  *cnt0 = tmp/reg1;
 } else if(__gx->perf0Mode>=GX_PERF0_VERTICES && __gx->perf0Mode<GX_PERF0_NONE) *cnt0 = reg1;



}
