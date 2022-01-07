
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpx {scalar_t__ cpx_key_len; scalar_t__ cpx_max_key_len; } ;



bool cpx_can_copy(const struct cpx *src, const struct cpx *dst)
{
 return src->cpx_key_len <= dst->cpx_max_key_len;
}
