
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t fset; int * filterbuf; int * filters; } ;
typedef TYPE_1__ APEContext ;


 int APE_FILTER_LEVELS ;
 int ** ape_filter_orders ;
 int init_entropy_decoder (TYPE_1__*) ;
 int init_filter (TYPE_1__*,int ,int ,int ) ;
 int init_predictor_decoder (TYPE_1__*) ;

__attribute__((used)) static int init_frame_decoder(APEContext *ctx)
{
    int i, ret;
    if ((ret = init_entropy_decoder(ctx)) < 0)
        return ret;
    init_predictor_decoder(ctx);

    for (i = 0; i < APE_FILTER_LEVELS; i++) {
        if (!ape_filter_orders[ctx->fset][i])
            break;
        init_filter(ctx, ctx->filters[i], ctx->filterbuf[i],
                    ape_filter_orders[ctx->fset][i]);
    }
    return 0;
}
