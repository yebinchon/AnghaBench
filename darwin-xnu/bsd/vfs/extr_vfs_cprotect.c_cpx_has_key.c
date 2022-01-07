
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpx {scalar_t__ cpx_key_len; } ;



bool cpx_has_key(const struct cpx *cpx)
{
 return cpx->cpx_key_len > 0;
}
