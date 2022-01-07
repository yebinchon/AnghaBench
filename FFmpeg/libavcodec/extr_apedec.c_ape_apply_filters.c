
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {size_t fset; int * filters; } ;
typedef TYPE_1__ APEContext ;


 int APE_FILTER_LEVELS ;
 int ** ape_filter_fracbits ;
 int ** ape_filter_orders ;
 int apply_filter (TYPE_1__*,int ,int *,int *,int,int ,int ) ;

__attribute__((used)) static void ape_apply_filters(APEContext *ctx, int32_t *decoded0,
                              int32_t *decoded1, int count)
{
    int i;

    for (i = 0; i < APE_FILTER_LEVELS; i++) {
        if (!ape_filter_orders[ctx->fset][i])
            break;
        apply_filter(ctx, ctx->filters[i], decoded0, decoded1, count,
                     ape_filter_orders[ctx->fset][i],
                     ape_filter_fracbits[ctx->fset][i]);
    }
}
