
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpx {int cpx_flags; } ;


 int CPX_SEP_WRAPPEDKEY ;
 int ISSET (int ,int ) ;

bool cpx_is_sep_wrapped_key(const struct cpx *cpx)
{
 return ISSET(cpx->cpx_flags, CPX_SEP_WRAPPEDKEY);
}
