
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* cpx_t ;
struct TYPE_3__ {int cpx_max_key_len; scalar_t__ cpx_key_len; scalar_t__ cpx_flags; int cpx_iv_aes_ctx; int * cpx_cached_key; } ;


 int bzero (int *,int) ;

void cpx_flush(cpx_t cpx)
{
 bzero(cpx->cpx_cached_key, cpx->cpx_max_key_len);
 bzero(&cpx->cpx_iv_aes_ctx, sizeof(cpx->cpx_iv_aes_ctx));
 cpx->cpx_flags = 0;
 cpx->cpx_key_len = 0;
}
