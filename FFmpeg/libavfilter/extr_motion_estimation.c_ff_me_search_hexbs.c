
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int (* get_cost ) (TYPE_1__*,int,int,int,int) ;int y_max; scalar_t__ search_param; int x_max; int y_min; int x_min; } ;
typedef TYPE_1__ AVMotionEstContext ;


 int COST_P_MV (scalar_t__,scalar_t__) ;
 int FFMAX (int ,scalar_t__) ;
 int FFMIN (scalar_t__,int ) ;
 scalar_t__** dia1 ;
 scalar_t__** hex2 ;
 int stub1 (TYPE_1__*,int,int,int,int) ;

uint64_t ff_me_search_hexbs(AVMotionEstContext *me_ctx, int x_mb, int y_mb, int *mv)
{
    int x, y;
    int x_min = FFMAX(me_ctx->x_min, x_mb - me_ctx->search_param);
    int y_min = FFMAX(me_ctx->y_min, y_mb - me_ctx->search_param);
    int x_max = FFMIN(x_mb + me_ctx->search_param, me_ctx->x_max);
    int y_max = FFMIN(y_mb + me_ctx->search_param, me_ctx->y_max);
    uint64_t cost, cost_min;
    int i;

    if (!(cost_min = me_ctx->get_cost(me_ctx, x_mb, y_mb, x_mb, y_mb)))
        return cost_min;

    do {
        x = mv[0];
        y = mv[1];

        for (i = 0; i < 6; i++)
            COST_P_MV(x + hex2[i][0], y + hex2[i][1]);

    } while (x != mv[0] || y != mv[1]);

    for (i = 0; i < 4; i++)
        COST_P_MV(x + dia1[i][0], y + dia1[i][1]);

    return cost_min;
}
