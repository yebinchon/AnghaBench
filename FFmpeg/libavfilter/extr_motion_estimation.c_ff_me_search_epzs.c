
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {scalar_t__ pred_y; scalar_t__ pred_x; TYPE_1__* preds; int y_max; scalar_t__ search_param; int x_max; int y_min; int x_min; } ;
struct TYPE_4__ {int nb; scalar_t__** mvs; } ;
typedef TYPE_1__ AVMotionEstPredictor ;
typedef TYPE_2__ AVMotionEstContext ;


 int COST_P_MV (scalar_t__,scalar_t__) ;
 int FFMAX (int ,scalar_t__) ;
 int FFMIN (scalar_t__,int ) ;
 int UINT64_MAX ;
 scalar_t__** dia1 ;

uint64_t ff_me_search_epzs(AVMotionEstContext *me_ctx, int x_mb, int y_mb, int *mv)
{
    int x, y;
    int x_min = FFMAX(me_ctx->x_min, x_mb - me_ctx->search_param);
    int y_min = FFMAX(me_ctx->y_min, y_mb - me_ctx->search_param);
    int x_max = FFMIN(x_mb + me_ctx->search_param, me_ctx->x_max);
    int y_max = FFMIN(y_mb + me_ctx->search_param, me_ctx->y_max);
    uint64_t cost, cost_min;
    int i;

    AVMotionEstPredictor *preds = me_ctx->preds;

    cost_min = UINT64_MAX;

    COST_P_MV(x_mb + me_ctx->pred_x, y_mb + me_ctx->pred_y);

    for (i = 0; i < preds[0].nb; i++)
        COST_P_MV(x_mb + preds[0].mvs[i][0], y_mb + preds[0].mvs[i][1]);

    for (i = 0; i < preds[1].nb; i++)
        COST_P_MV(x_mb + preds[1].mvs[i][0], y_mb + preds[1].mvs[i][1]);

    do {
        x = mv[0];
        y = mv[1];

        for (i = 0; i < 4; i++)
            COST_P_MV(x + dia1[i][0], y + dia1[i][1]);

    } while (x != mv[0] || y != mv[1]);

    return cost_min;
}
