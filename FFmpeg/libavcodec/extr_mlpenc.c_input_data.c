
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* avctx; } ;
struct TYPE_5__ {scalar_t__ sample_fmt; } ;
typedef TYPE_2__ MLPEncodeContext ;


 scalar_t__ AV_SAMPLE_FMT_S32 ;
 int input_data_internal (TYPE_2__*,void*,int) ;

__attribute__((used)) static void input_data(MLPEncodeContext *ctx, void *samples)
{
    if (ctx->avctx->sample_fmt == AV_SAMPLE_FMT_S32)
        input_data_internal(ctx, samples, 1);
    else
        input_data_internal(ctx, samples, 0);
}
