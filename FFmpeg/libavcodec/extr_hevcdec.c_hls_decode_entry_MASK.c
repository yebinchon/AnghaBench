#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {TYPE_6__* priv_data; } ;
struct TYPE_20__ {TYPE_4__* sps; TYPE_1__* pps; } ;
struct TYPE_18__ {size_t slice_ctb_addr_rs; scalar_t__ slice_addr; int /*<<< orphan*/  slice_loop_filter_across_slices_enabled_flag; int /*<<< orphan*/  tc_offset; int /*<<< orphan*/  beta_offset; scalar_t__ dependent_slice_segment_flag; } ;
struct TYPE_21__ {scalar_t__* tab_slice_address; TYPE_5__ ps; TYPE_3__ sh; int /*<<< orphan*/ * filter_slice_edges; TYPE_2__* deblock; int /*<<< orphan*/  avctx; } ;
struct TYPE_19__ {int log2_ctb_size; int ctb_size; int width; int height; } ;
struct TYPE_17__ {int /*<<< orphan*/  tc_offset; int /*<<< orphan*/  beta_offset; } ;
struct TYPE_16__ {int* ctb_addr_rs_to_ts; int* ctb_addr_ts_to_rs; } ;
typedef  TYPE_6__ HEVCContext ;
typedef  TYPE_7__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int) ; 
 int FUNC5 (TYPE_6__*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int,int) ; 

__attribute__((used)) static int FUNC8(AVCodecContext *avctxt, void *isFilterThread)
{
    HEVCContext *s  = avctxt->priv_data;
    int ctb_size    = 1 << s->ps.sps->log2_ctb_size;
    int more_data   = 1;
    int x_ctb       = 0;
    int y_ctb       = 0;
    int ctb_addr_ts = s->ps.pps->ctb_addr_rs_to_ts[s->sh.slice_ctb_addr_rs];
    int ret;

    if (!ctb_addr_ts && s->sh.dependent_slice_segment_flag) {
        FUNC0(s->avctx, AV_LOG_ERROR, "Impossible initial tile.\n");
        return AVERROR_INVALIDDATA;
    }

    if (s->sh.dependent_slice_segment_flag) {
        int prev_rs = s->ps.pps->ctb_addr_ts_to_rs[ctb_addr_ts - 1];
        if (s->tab_slice_address[prev_rs] != s->sh.slice_addr) {
            FUNC0(s->avctx, AV_LOG_ERROR, "Previous slice segment missing\n");
            return AVERROR_INVALIDDATA;
        }
    }

    while (more_data && ctb_addr_ts < s->ps.sps->ctb_size) {
        int ctb_addr_rs = s->ps.pps->ctb_addr_ts_to_rs[ctb_addr_ts];

        x_ctb = (ctb_addr_rs % ((s->ps.sps->width + ctb_size - 1) >> s->ps.sps->log2_ctb_size)) << s->ps.sps->log2_ctb_size;
        y_ctb = (ctb_addr_rs / ((s->ps.sps->width + ctb_size - 1) >> s->ps.sps->log2_ctb_size)) << s->ps.sps->log2_ctb_size;
        FUNC6(s, x_ctb, y_ctb, ctb_addr_ts);

        ret = FUNC1(s, ctb_addr_ts);
        if (ret < 0) {
            s->tab_slice_address[ctb_addr_rs] = -1;
            return ret;
        }

        FUNC7(s, x_ctb >> s->ps.sps->log2_ctb_size, y_ctb >> s->ps.sps->log2_ctb_size);

        s->deblock[ctb_addr_rs].beta_offset = s->sh.beta_offset;
        s->deblock[ctb_addr_rs].tc_offset   = s->sh.tc_offset;
        s->filter_slice_edges[ctb_addr_rs]  = s->sh.slice_loop_filter_across_slices_enabled_flag;

        more_data = FUNC5(s, x_ctb, y_ctb, s->ps.sps->log2_ctb_size, 0);
        if (more_data < 0) {
            s->tab_slice_address[ctb_addr_rs] = -1;
            return more_data;
        }


        ctb_addr_ts++;
        FUNC4(s, ctb_addr_ts);
        FUNC3(s, x_ctb, y_ctb, ctb_size);
    }

    if (x_ctb + ctb_size >= s->ps.sps->width &&
        y_ctb + ctb_size >= s->ps.sps->height)
        FUNC2(s, x_ctb, y_ctb, ctb_size);

    return ctb_addr_ts;
}