
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpx {int cpx_flags; } ;


 int CPX_SYNTHETIC_OFFSET_FOR_IV ;
 int ISSET (int ,int ) ;

bool cpx_synthetic_offset_for_iv(const struct cpx *cpx)
{
 return ISSET(cpx->cpx_flags, CPX_SYNTHETIC_OFFSET_FOR_IV);
}
