
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpx {int cpx_flags; } ;


 int CLR (int ,int ) ;
 int CPX_USE_OFFSET_FOR_IV ;
 int SET (int ,int ) ;

void cpx_set_use_offset_for_iv(struct cpx *cpx, bool v)
{
 if (v)
 SET(cpx->cpx_flags, CPX_USE_OFFSET_FOR_IV);
 else
 CLR(cpx->cpx_flags, CPX_USE_OFFSET_FOR_IV);
}
