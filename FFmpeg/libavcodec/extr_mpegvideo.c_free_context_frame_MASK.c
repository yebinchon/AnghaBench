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
struct TYPE_4__ {int /*<<< orphan*/  er_temp_buffer; int /*<<< orphan*/  error_status_table; } ;
struct TYPE_5__ {scalar_t__ uvlinesize; scalar_t__ linesize; int /*<<< orphan*/  bits_tab; int /*<<< orphan*/  cplx_tab; int /*<<< orphan*/  lambda_table; int /*<<< orphan*/  mb_index2xy; TYPE_1__ er; int /*<<< orphan*/  mbskip_table; int /*<<< orphan*/  pred_dir_table; int /*<<< orphan*/  cbp_table; int /*<<< orphan*/  mbintra_table; int /*<<< orphan*/  coded_block_base; int /*<<< orphan*/  dc_val_base; int /*<<< orphan*/ * p_field_select_table; int /*<<< orphan*/ *** p_field_mv_table; int /*<<< orphan*/ ** p_field_mv_table_base; int /*<<< orphan*/ ** b_field_select_table; int /*<<< orphan*/ **** b_field_mv_table; int /*<<< orphan*/ *** b_field_mv_table_base; int /*<<< orphan*/ * b_direct_mv_table; int /*<<< orphan*/ * b_bidir_back_mv_table; int /*<<< orphan*/ * b_bidir_forw_mv_table; int /*<<< orphan*/ * b_back_mv_table; int /*<<< orphan*/ * b_forw_mv_table; int /*<<< orphan*/ * p_mv_table; int /*<<< orphan*/  b_direct_mv_table_base; int /*<<< orphan*/  b_bidir_back_mv_table_base; int /*<<< orphan*/  b_bidir_forw_mv_table_base; int /*<<< orphan*/  b_back_mv_table_base; int /*<<< orphan*/  b_forw_mv_table_base; int /*<<< orphan*/  p_mv_table_base; int /*<<< orphan*/  mb_type; } ;
typedef  TYPE_2__ MpegEncContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(MpegEncContext *s)
{
    int i, j, k;

    FUNC0(&s->mb_type);
    FUNC0(&s->p_mv_table_base);
    FUNC0(&s->b_forw_mv_table_base);
    FUNC0(&s->b_back_mv_table_base);
    FUNC0(&s->b_bidir_forw_mv_table_base);
    FUNC0(&s->b_bidir_back_mv_table_base);
    FUNC0(&s->b_direct_mv_table_base);
    s->p_mv_table            = NULL;
    s->b_forw_mv_table       = NULL;
    s->b_back_mv_table       = NULL;
    s->b_bidir_forw_mv_table = NULL;
    s->b_bidir_back_mv_table = NULL;
    s->b_direct_mv_table     = NULL;
    for (i = 0; i < 2; i++) {
        for (j = 0; j < 2; j++) {
            for (k = 0; k < 2; k++) {
                FUNC0(&s->b_field_mv_table_base[i][j][k]);
                s->b_field_mv_table[i][j][k] = NULL;
            }
            FUNC0(&s->b_field_select_table[i][j]);
            FUNC0(&s->p_field_mv_table_base[i][j]);
            s->p_field_mv_table[i][j] = NULL;
        }
        FUNC0(&s->p_field_select_table[i]);
    }

    FUNC0(&s->dc_val_base);
    FUNC0(&s->coded_block_base);
    FUNC0(&s->mbintra_table);
    FUNC0(&s->cbp_table);
    FUNC0(&s->pred_dir_table);

    FUNC0(&s->mbskip_table);

    FUNC0(&s->er.error_status_table);
    FUNC0(&s->er.er_temp_buffer);
    FUNC0(&s->mb_index2xy);
    FUNC0(&s->lambda_table);

    FUNC0(&s->cplx_tab);
    FUNC0(&s->bits_tab);

    s->linesize = s->uvlinesize = 0;
}