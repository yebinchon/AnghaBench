#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16_t ;
typedef  int /*<<< orphan*/  cavs_vector ;
struct TYPE_3__ {int mb_width; int mb_height; void* block; void* col_type_base; void* col_mv; void* top_border_v; void* top_border_u; void* top_border_y; void* top_pred_Y; void** top_mv; void* top_qp; } ;
typedef  TYPE_1__ AVSContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (void**) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (int,int) ; 

int FUNC4(AVSContext *h)
{
    /* alloc top line of predictors */
    h->top_qp       = FUNC2(h->mb_width);
    h->top_mv[0]    = FUNC3(h->mb_width * 2 + 1,  sizeof(cavs_vector));
    h->top_mv[1]    = FUNC3(h->mb_width * 2 + 1,  sizeof(cavs_vector));
    h->top_pred_Y   = FUNC3(h->mb_width * 2,  sizeof(*h->top_pred_Y));
    h->top_border_y = FUNC3(h->mb_width + 1,  16);
    h->top_border_u = FUNC3(h->mb_width,  10);
    h->top_border_v = FUNC3(h->mb_width,  10);

    /* alloc space for co-located MVs and types */
    h->col_mv        = FUNC3(h->mb_width * h->mb_height,
                                        4 * sizeof(cavs_vector));
    h->col_type_base = FUNC2(h->mb_width * h->mb_height);
    h->block         = FUNC2(64 * sizeof(int16_t));

    if (!h->top_qp || !h->top_mv[0] || !h->top_mv[1] || !h->top_pred_Y ||
        !h->top_border_y || !h->top_border_u || !h->top_border_v ||
        !h->col_mv || !h->col_type_base || !h->block) {
        FUNC1(&h->top_qp);
        FUNC1(&h->top_mv[0]);
        FUNC1(&h->top_mv[1]);
        FUNC1(&h->top_pred_Y);
        FUNC1(&h->top_border_y);
        FUNC1(&h->top_border_u);
        FUNC1(&h->top_border_v);
        FUNC1(&h->col_mv);
        FUNC1(&h->col_type_base);
        FUNC1(&h->block);
        return FUNC0(ENOMEM);
    }
    return 0;
}