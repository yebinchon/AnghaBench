
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cache_size; int* cache; int ** sec_models; int full_model; int cache_model; int special_initial_cache; } ;
typedef TYPE_1__ PixContext ;


 int model_reset (int *) ;

__attribute__((used)) static void pixctx_reset(PixContext *ctx)
{
    int i, j;

    if (!ctx->special_initial_cache)
        for (i = 0; i < ctx->cache_size; i++)
            ctx->cache[i] = i;
    else {
        ctx->cache[0] = 1;
        ctx->cache[1] = 2;
        ctx->cache[2] = 4;
    }

    model_reset(&ctx->cache_model);
    model_reset(&ctx->full_model);

    for (i = 0; i < 15; i++)
        for (j = 0; j < 4; j++)
            model_reset(&ctx->sec_models[i][j]);
}
