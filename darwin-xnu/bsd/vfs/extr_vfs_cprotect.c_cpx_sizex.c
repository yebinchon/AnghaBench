
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpx {int cpx_max_key_len; } ;


 size_t cpx_size (int ) ;

size_t cpx_sizex(const struct cpx *cpx)
{
 return cpx_size(cpx->cpx_max_key_len);
}
