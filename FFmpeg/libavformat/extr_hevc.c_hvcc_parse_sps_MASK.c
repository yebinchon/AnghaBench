#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int chromaFormat; void* bitDepthChromaMinus8; void* bitDepthLumaMinus8; scalar_t__ temporalIdNested; int /*<<< orphan*/  numTemporalLayers; } ;
typedef  TYPE_1__ HEVCDecoderConfigurationRecord ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (unsigned int,int) ; 
 int HEVC_MAX_SHORT_TERM_REF_PIC_SETS ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,unsigned int) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned int,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(GetBitContext *gb,
                          HEVCDecoderConfigurationRecord *hvcc)
{
    unsigned int i, sps_max_sub_layers_minus1, log2_max_pic_order_cnt_lsb_minus4;
    unsigned int num_short_term_ref_pic_sets, num_delta_pocs[HEVC_MAX_SHORT_TERM_REF_PIC_SETS];

    FUNC8(gb, 4); // sps_video_parameter_set_id

    sps_max_sub_layers_minus1 = FUNC2 (gb, 3);

    /*
     * numTemporalLayers greater than 1 indicates that the stream to which this
     * configuration record applies is temporally scalable and the contained
     * number of temporal layers (also referred to as temporal sub-layer or
     * sub-layer in ISO/IEC 23008-2) is equal to numTemporalLayers. Value 1
     * indicates that the stream is not temporally scalable. Value 0 indicates
     * that it is unknown whether the stream is temporally scalable.
     */
    hvcc->numTemporalLayers = FUNC0(hvcc->numTemporalLayers,
                                    sps_max_sub_layers_minus1 + 1);

    hvcc->temporalIdNested = FUNC3(gb);

    FUNC5(gb, hvcc, sps_max_sub_layers_minus1);

    FUNC4(gb); // sps_seq_parameter_set_id

    hvcc->chromaFormat = FUNC4(gb);

    if (hvcc->chromaFormat == 3)
        FUNC9(gb); // separate_colour_plane_flag

    FUNC4(gb); // pic_width_in_luma_samples
    FUNC4(gb); // pic_height_in_luma_samples

    if (FUNC3(gb)) {        // conformance_window_flag
        FUNC4(gb); // conf_win_left_offset
        FUNC4(gb); // conf_win_right_offset
        FUNC4(gb); // conf_win_top_offset
        FUNC4(gb); // conf_win_bottom_offset
    }

    hvcc->bitDepthLumaMinus8          = FUNC4(gb);
    hvcc->bitDepthChromaMinus8        = FUNC4(gb);
    log2_max_pic_order_cnt_lsb_minus4 = FUNC4(gb);

    /* sps_sub_layer_ordering_info_present_flag */
    i = FUNC3(gb) ? 0 : sps_max_sub_layers_minus1;
    for (; i <= sps_max_sub_layers_minus1; i++)
        FUNC11(gb);

    FUNC4(gb); // log2_min_luma_coding_block_size_minus3
    FUNC4(gb); // log2_diff_max_min_luma_coding_block_size
    FUNC4(gb); // log2_min_transform_block_size_minus2
    FUNC4(gb); // log2_diff_max_min_transform_block_size
    FUNC4(gb); // max_transform_hierarchy_depth_inter
    FUNC4(gb); // max_transform_hierarchy_depth_intra

    if (FUNC3(gb) && // scaling_list_enabled_flag
        FUNC3(gb))   // sps_scaling_list_data_present_flag
        FUNC10(gb);

    FUNC9(gb); // amp_enabled_flag
    FUNC9(gb); // sample_adaptive_offset_enabled_flag

    if (FUNC3(gb)) {           // pcm_enabled_flag
        FUNC8         (gb, 4); // pcm_sample_bit_depth_luma_minus1
        FUNC8         (gb, 4); // pcm_sample_bit_depth_chroma_minus1
        FUNC4(gb);    // log2_min_pcm_luma_coding_block_size_minus3
        FUNC4(gb);    // log2_diff_max_min_pcm_luma_coding_block_size
        FUNC9        (gb);    // pcm_loop_filter_disabled_flag
    }

    num_short_term_ref_pic_sets = FUNC4(gb);
    if (num_short_term_ref_pic_sets > HEVC_MAX_SHORT_TERM_REF_PIC_SETS)
        return AVERROR_INVALIDDATA;

    for (i = 0; i < num_short_term_ref_pic_sets; i++) {
        int ret = FUNC7(gb, i, num_short_term_ref_pic_sets, num_delta_pocs);
        if (ret < 0)
            return ret;
    }

    if (FUNC3(gb)) {                               // long_term_ref_pics_present_flag
        unsigned num_long_term_ref_pics_sps = FUNC4(gb);
        if (num_long_term_ref_pics_sps > 31U)
            return AVERROR_INVALIDDATA;
        for (i = 0; i < num_long_term_ref_pics_sps; i++) { // num_long_term_ref_pics_sps
            int len = FUNC1(log2_max_pic_order_cnt_lsb_minus4 + 4, 16);
            FUNC8 (gb, len); // lt_ref_pic_poc_lsb_sps[i]
            FUNC9(gb);      // used_by_curr_pic_lt_sps_flag[i]
        }
    }

    FUNC9(gb); // sps_temporal_mvp_enabled_flag
    FUNC9(gb); // strong_intra_smoothing_enabled_flag

    if (FUNC3(gb)) // vui_parameters_present_flag
        FUNC6(gb, hvcc, sps_max_sub_layers_minus1);

    /* nothing useful for hvcC past this point */
    return 0;
}