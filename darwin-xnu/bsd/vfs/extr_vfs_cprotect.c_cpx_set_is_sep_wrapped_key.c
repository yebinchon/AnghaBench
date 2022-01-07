
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpx {int cpx_flags; } ;


 int CLR (int ,int ) ;
 int CPX_SEP_WRAPPEDKEY ;
 int SET (int ,int ) ;

void cpx_set_is_sep_wrapped_key(struct cpx *cpx, bool v)
{
 if (v)
 SET(cpx->cpx_flags, CPX_SEP_WRAPPEDKEY);
 else
 CLR(cpx->cpx_flags, CPX_SEP_WRAPPEDKEY);
}
