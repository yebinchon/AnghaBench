#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_5__ {int x_min; int search_param; int y_min; int x_max; int y_max; int pred_x; int pred_y; TYPE_1__* preds; } ;
struct TYPE_4__ {int nb; int** mvs; } ;
typedef  TYPE_1__ AVMotionEstPredictor ;
typedef  TYPE_2__ AVMotionEstContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int** dia1 ; 
 int** hex2 ; 
 int** hex4 ; 

uint64_t FUNC3(AVMotionEstContext *me_ctx, int x_mb, int y_mb, int *mv)
{
    int x, y;
    int x_min = FUNC1(me_ctx->x_min, x_mb - me_ctx->search_param);
    int y_min = FUNC1(me_ctx->y_min, y_mb - me_ctx->search_param);
    int x_max = FUNC2(x_mb + me_ctx->search_param, me_ctx->x_max);
    int y_max = FUNC2(y_mb + me_ctx->search_param, me_ctx->y_max);
    uint64_t cost, cost_min;
    int d, i;
    int end_x, end_y;

    AVMotionEstPredictor *pred = &me_ctx->preds[0];

    cost_min = UINT64_MAX;

    FUNC0(x_mb + me_ctx->pred_x, y_mb + me_ctx->pred_y);

    for (i = 0; i < pred->nb; i++)
        FUNC0(x_mb + pred->mvs[i][0], y_mb + pred->mvs[i][1]);

    // Unsymmetrical-cross Search
    x = mv[0];
    y = mv[1];
    for (d = 1; d <= me_ctx->search_param; d += 2) {
        FUNC0(x - d, y);
        FUNC0(x + d, y);
        if (d <= me_ctx->search_param / 2) {
            FUNC0(x, y - d);
            FUNC0(x, y + d);
        }
    }

    // Uneven Multi-Hexagon-Grid Search
    end_x = FUNC2(mv[0] + 2, x_max);
    end_y = FUNC2(mv[1] + 2, y_max);
    for (y = FUNC1(y_min, mv[1] - 2); y <= end_y; y++)
        for (x = FUNC1(x_min, mv[0] - 2); x <= end_x; x++)
            FUNC0(x, y);

    x = mv[0];
    y = mv[1];
    for (d = 1; d <= me_ctx->search_param / 4; d++)
        for (i = 1; i < 16; i++)
            FUNC0(x + hex4[i][0] * d, y + hex4[i][1] * d);

    // Extended Hexagon-based Search
    do {
        x = mv[0];
        y = mv[1];

        for (i = 0; i < 6; i++)
            FUNC0(x + hex2[i][0], y + hex2[i][1]);

    } while (x != mv[0] || y != mv[1]);

    for (i = 0; i < 4; i++)
        FUNC0(x + dia1[i][0], y + dia1[i][1]);

    return cost_min;
}