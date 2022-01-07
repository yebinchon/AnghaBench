
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {scalar_t__ idx; int initialized; TYPE_1__* sfmt; } ;
typedef TYPE_2__ sfmt_t ;
struct TYPE_5__ {int * u; } ;


 scalar_t__ N32 ;
 int assert (int ) ;
 int gen_rand_all (TYPE_2__*) ;

uint32_t gen_rand32(sfmt_t *ctx) {
    uint32_t r;
    uint32_t *psfmt32 = &ctx->sfmt[0].u[0];

    assert(ctx->initialized);
    if (ctx->idx >= N32) {
 gen_rand_all(ctx);
 ctx->idx = 0;
    }
    r = psfmt32[ctx->idx++];
    return r;
}
