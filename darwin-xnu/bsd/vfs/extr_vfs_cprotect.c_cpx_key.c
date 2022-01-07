
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpx {scalar_t__ cpx_cached_key; } ;



void *cpx_key(const struct cpx *cpx)
{
 return (void *)cpx->cpx_cached_key;
}
