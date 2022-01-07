
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int (* get_cost ) (TYPE_1__*,int,int,int,int) ;scalar_t__ search_param; int y_max; int x_max; int y_min; int x_min; } ;
typedef TYPE_1__ AVMotionEstContext ;


 int COST_P_MV (int,int) ;
 int FFABS (int) ;
 int FFMAX (int ,scalar_t__) ;
 int FFMIN (scalar_t__,int ) ;
 int ROUNDED_DIV (scalar_t__,int) ;
 int** sqr1 ;
 int stub1 (TYPE_1__*,int,int,int,int) ;

uint64_t ff_me_search_ntss(AVMotionEstContext *me_ctx, int x_mb, int y_mb, int *mv)
{
    int x, y;
    int x_min = FFMAX(me_ctx->x_min, x_mb - me_ctx->search_param);
    int y_min = FFMAX(me_ctx->y_min, y_mb - me_ctx->search_param);
    int x_max = FFMIN(x_mb + me_ctx->search_param, me_ctx->x_max);
    int y_max = FFMIN(y_mb + me_ctx->search_param, me_ctx->y_max);
    uint64_t cost, cost_min;
    int step = ROUNDED_DIV(me_ctx->search_param, 2);
    int first_step = 1;
    int i;

    mv[0] = x_mb;
    mv[1] = y_mb;

    if (!(cost_min = me_ctx->get_cost(me_ctx, x_mb, y_mb, x_mb, y_mb)))
        return cost_min;

    do {
        x = mv[0];
        y = mv[1];

        for (i = 0; i < 8; i++)
            COST_P_MV(x + sqr1[i][0] * step, y + sqr1[i][1] * step);


        if (first_step) {

            for (i = 0; i < 8; i++)
                COST_P_MV(x + sqr1[i][0], y + sqr1[i][1]);

            if (x == mv[0] && y == mv[1])
                return cost_min;

            if (FFABS(x - mv[0]) <= 1 && FFABS(y - mv[1]) <= 1) {
                x = mv[0];
                y = mv[1];

                for (i = 0; i < 8; i++)
                    COST_P_MV(x + sqr1[i][0], y + sqr1[i][1]);
                return cost_min;
            }

            first_step = 0;
        }

        step = step >> 1;

    } while (step > 0);

    return cost_min;
}
