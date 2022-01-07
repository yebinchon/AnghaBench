
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_6__ {int initialized; int idx; TYPE_1__* sfmt; } ;
typedef TYPE_2__ sfmt_t ;
struct TYPE_5__ {int* u; } ;


 int N32 ;
 int assert (int) ;
 int gen_rand_all (TYPE_2__*) ;

uint64_t gen_rand64(sfmt_t *ctx) {




    uint64_t r;
    uint64_t *psfmt64 = (uint64_t *)&ctx->sfmt[0].u[0];


    assert(ctx->initialized);
    assert(ctx->idx % 2 == 0);

    if (ctx->idx >= N32) {
 gen_rand_all(ctx);
 ctx->idx = 0;
    }






    r = psfmt64[ctx->idx / 2];
    ctx->idx += 2;
    return r;

}
