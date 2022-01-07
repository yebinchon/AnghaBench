
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct cpx {int cpx_max_key_len; } ;



uint16_t cpx_max_key_len(const struct cpx *cpx)
{
 return cpx->cpx_max_key_len;
}
