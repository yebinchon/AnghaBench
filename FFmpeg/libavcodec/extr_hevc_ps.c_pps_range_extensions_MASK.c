#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int chroma_qp_offset_list_len_minus1; scalar_t__ log2_sao_offset_scale_luma; scalar_t__ log2_sao_offset_scale_chroma; void** cr_qp_offset_list; void** cb_qp_offset_list; void* diff_cu_chroma_qp_offset_depth; void* chroma_qp_offset_list_enabled_flag; void* cross_component_prediction_enabled_flag; void* log2_max_transform_skip_block_size; scalar_t__ transform_skip_enabled_flag; } ;
struct TYPE_5__ {scalar_t__ bit_depth_chroma; scalar_t__ bit_depth; } ;
typedef  TYPE_1__ HEVCSPS ;
typedef  TYPE_2__ HEVCPPS ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(GetBitContext *gb, AVCodecContext *avctx,
                                HEVCPPS *pps, HEVCSPS *sps) {
    int i;

    if (pps->transform_skip_enabled_flag) {
        pps->log2_max_transform_skip_block_size = FUNC4(gb) + 2;
    }
    pps->cross_component_prediction_enabled_flag = FUNC2(gb);
    pps->chroma_qp_offset_list_enabled_flag = FUNC2(gb);
    if (pps->chroma_qp_offset_list_enabled_flag) {
        pps->diff_cu_chroma_qp_offset_depth = FUNC4(gb);
        pps->chroma_qp_offset_list_len_minus1 = FUNC4(gb);
        if (pps->chroma_qp_offset_list_len_minus1 > 5) {
            FUNC1(avctx, AV_LOG_ERROR,
                   "chroma_qp_offset_list_len_minus1 shall be in the range [0, 5].\n");
            return AVERROR_INVALIDDATA;
        }
        for (i = 0; i <= pps->chroma_qp_offset_list_len_minus1; i++) {
            pps->cb_qp_offset_list[i] = FUNC3(gb);
            if (pps->cb_qp_offset_list[i]) {
                FUNC1(avctx, AV_LOG_WARNING,
                       "cb_qp_offset_list not tested yet.\n");
            }
            pps->cr_qp_offset_list[i] = FUNC3(gb);
            if (pps->cr_qp_offset_list[i]) {
                FUNC1(avctx, AV_LOG_WARNING,
                       "cb_qp_offset_list not tested yet.\n");
            }
        }
    }
    pps->log2_sao_offset_scale_luma = FUNC4(gb);
    pps->log2_sao_offset_scale_chroma = FUNC4(gb);

    if (   pps->log2_sao_offset_scale_luma   > FUNC0(sps->bit_depth        - 10, 0)
        || pps->log2_sao_offset_scale_chroma > FUNC0(sps->bit_depth_chroma - 10, 0)
    )
        return AVERROR_INVALIDDATA;

    return(0);
}