#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int bs_width; int bs_height; void* rpl_tab_pool; void* tab_mvf_pool; void* vertical_bs; void* horizontal_bs; void* tab_slice_address; void* filter_slice_edges; void* qp_y_tab; void* is_pcm; void* cbf_luma; void* tab_ipm; void* tab_ct_depth; void* skip_flag; void* deblock; void* sao; } ;
struct TYPE_6__ {int log2_min_cb_size; int width; int height; int ctb_width; int ctb_height; int min_pu_width; int min_pu_height; int min_cb_height; int min_cb_width; int min_tb_width; int min_tb_height; } ;
typedef  int /*<<< orphan*/  RefPicListTab ;
typedef  int /*<<< orphan*/  MvField ;
typedef  TYPE_1__ HEVCSPS ;
typedef  TYPE_2__ HEVCContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  av_buffer_allocz ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int,int) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(HEVCContext *s, const HEVCSPS *sps)
{
    int log2_min_cb_size = sps->log2_min_cb_size;
    int width            = sps->width;
    int height           = sps->height;
    int pic_size_in_ctb  = ((width  >> log2_min_cb_size) + 1) *
                           ((height >> log2_min_cb_size) + 1);
    int ctb_count        = sps->ctb_width * sps->ctb_height;
    int min_pu_size      = sps->min_pu_width * sps->min_pu_height;

    s->bs_width  = (width  >> 2) + 1;
    s->bs_height = (height >> 2) + 1;

    s->sao           = FUNC4(ctb_count, sizeof(*s->sao));
    s->deblock       = FUNC4(ctb_count, sizeof(*s->deblock));
    if (!s->sao || !s->deblock)
        goto fail;

    s->skip_flag    = FUNC2(sps->min_cb_height, sps->min_cb_width);
    s->tab_ct_depth = FUNC2(sps->min_cb_height, sps->min_cb_width);
    if (!s->skip_flag || !s->tab_ct_depth)
        goto fail;

    s->cbf_luma = FUNC2(sps->min_tb_width, sps->min_tb_height);
    s->tab_ipm  = FUNC3(min_pu_size);
    s->is_pcm   = FUNC2(sps->min_pu_width + 1, sps->min_pu_height + 1);
    if (!s->tab_ipm || !s->cbf_luma || !s->is_pcm)
        goto fail;

    s->filter_slice_edges = FUNC3(ctb_count);
    s->tab_slice_address  = FUNC2(pic_size_in_ctb,
                                      sizeof(*s->tab_slice_address));
    s->qp_y_tab           = FUNC2(pic_size_in_ctb,
                                      sizeof(*s->qp_y_tab));
    if (!s->qp_y_tab || !s->filter_slice_edges || !s->tab_slice_address)
        goto fail;

    s->horizontal_bs = FUNC4(s->bs_width, s->bs_height);
    s->vertical_bs   = FUNC4(s->bs_width, s->bs_height);
    if (!s->horizontal_bs || !s->vertical_bs)
        goto fail;

    s->tab_mvf_pool = FUNC1(min_pu_size * sizeof(MvField),
                                          av_buffer_allocz);
    s->rpl_tab_pool = FUNC1(ctb_count * sizeof(RefPicListTab),
                                          av_buffer_allocz);
    if (!s->tab_mvf_pool || !s->rpl_tab_pool)
        goto fail;

    return 0;

fail:
    FUNC5(s);
    return FUNC0(ENOMEM);
}