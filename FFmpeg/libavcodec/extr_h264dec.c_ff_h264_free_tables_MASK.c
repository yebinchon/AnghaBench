#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int nb_slice_ctx; TYPE_2__* slice_ctx; int /*<<< orphan*/  ref_index_pool; int /*<<< orphan*/  motion_val_pool; int /*<<< orphan*/  mb_type_pool; int /*<<< orphan*/  qscale_table_pool; int /*<<< orphan*/  mb2br_xy; int /*<<< orphan*/  mb2b_xy; int /*<<< orphan*/  list_counts; int /*<<< orphan*/ * slice_table; int /*<<< orphan*/  slice_table_base; int /*<<< orphan*/  non_zero_count; int /*<<< orphan*/  direct_table; int /*<<< orphan*/ * mvd_table; int /*<<< orphan*/  cbp_table; int /*<<< orphan*/  chroma_pred_mode_table; int /*<<< orphan*/  intra4x4_pred_mode; } ;
struct TYPE_5__ {int /*<<< orphan*/  er_temp_buffer; int /*<<< orphan*/  error_status_table; int /*<<< orphan*/  mb_index2xy; } ;
struct TYPE_6__ {scalar_t__* top_borders_allocated; scalar_t__ edge_emu_buffer_allocated; scalar_t__ bipred_scratchpad_allocated; int /*<<< orphan*/ * top_borders; int /*<<< orphan*/  edge_emu_buffer; int /*<<< orphan*/  bipred_scratchpad; TYPE_1__ er; int /*<<< orphan*/  dc_val_base; } ;
typedef  TYPE_2__ H264SliceContext ;
typedef  TYPE_3__ H264Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(H264Context *h)
{
    int i;

    FUNC1(&h->intra4x4_pred_mode);
    FUNC1(&h->chroma_pred_mode_table);
    FUNC1(&h->cbp_table);
    FUNC1(&h->mvd_table[0]);
    FUNC1(&h->mvd_table[1]);
    FUNC1(&h->direct_table);
    FUNC1(&h->non_zero_count);
    FUNC1(&h->slice_table_base);
    h->slice_table = NULL;
    FUNC1(&h->list_counts);

    FUNC1(&h->mb2b_xy);
    FUNC1(&h->mb2br_xy);

    FUNC0(&h->qscale_table_pool);
    FUNC0(&h->mb_type_pool);
    FUNC0(&h->motion_val_pool);
    FUNC0(&h->ref_index_pool);

    for (i = 0; i < h->nb_slice_ctx; i++) {
        H264SliceContext *sl = &h->slice_ctx[i];

        FUNC1(&sl->dc_val_base);
        FUNC1(&sl->er.mb_index2xy);
        FUNC1(&sl->er.error_status_table);
        FUNC1(&sl->er.er_temp_buffer);

        FUNC1(&sl->bipred_scratchpad);
        FUNC1(&sl->edge_emu_buffer);
        FUNC1(&sl->top_borders[0]);
        FUNC1(&sl->top_borders[1]);

        sl->bipred_scratchpad_allocated = 0;
        sl->edge_emu_buffer_allocated   = 0;
        sl->top_borders_allocated[0]    = 0;
        sl->top_borders_allocated[1]    = 0;
    }
}