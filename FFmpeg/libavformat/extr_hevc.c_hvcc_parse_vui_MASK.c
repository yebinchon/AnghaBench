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
struct TYPE_3__ {int /*<<< orphan*/  min_spatial_segmentation_idc; } ;
typedef  TYPE_1__ HEVCDecoderConfigurationRecord ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(GetBitContext *gb,
                           HEVCDecoderConfigurationRecord *hvcc,
                           unsigned int max_sub_layers_minus1)
{
    unsigned int min_spatial_segmentation_idc;

    if (FUNC2(gb))              // aspect_ratio_info_present_flag
        if (FUNC1(gb, 8) == 255) // aspect_ratio_idc
            FUNC6(gb, 32); // sar_width u(16), sar_height u(16)

    if (FUNC2(gb))  // overscan_info_present_flag
        FUNC5(gb); // overscan_appropriate_flag

    if (FUNC2(gb)) {  // video_signal_type_present_flag
        FUNC4(gb, 4); // video_format u(3), video_full_range_flag u(1)

        if (FUNC2(gb)) // colour_description_present_flag
            /*
             * colour_primaries         u(8)
             * transfer_characteristics u(8)
             * matrix_coeffs            u(8)
             */
            FUNC4(gb, 24);
    }

    if (FUNC2(gb)) {        // chroma_loc_info_present_flag
        FUNC3(gb); // chroma_sample_loc_type_top_field
        FUNC3(gb); // chroma_sample_loc_type_bottom_field
    }

    /*
     * neutral_chroma_indication_flag u(1)
     * field_seq_flag                 u(1)
     * frame_field_info_present_flag  u(1)
     */
    FUNC4(gb, 3);

    if (FUNC2(gb)) {        // default_display_window_flag
        FUNC3(gb); // def_disp_win_left_offset
        FUNC3(gb); // def_disp_win_right_offset
        FUNC3(gb); // def_disp_win_top_offset
        FUNC3(gb); // def_disp_win_bottom_offset
    }

    if (FUNC2(gb)) { // vui_timing_info_present_flag
        FUNC8(gb);

        if (FUNC2(gb)) // vui_hrd_parameters_present_flag
            FUNC7(gb, 1, max_sub_layers_minus1);
    }

    if (FUNC2(gb)) { // bitstream_restriction_flag
        /*
         * tiles_fixed_structure_flag              u(1)
         * motion_vectors_over_pic_boundaries_flag u(1)
         * restricted_ref_pic_lists_flag           u(1)
         */
        FUNC4(gb, 3);

        min_spatial_segmentation_idc = FUNC3(gb);

        /*
         * unsigned int(12) min_spatial_segmentation_idc;
         *
         * The min_spatial_segmentation_idc indication must indicate a level of
         * spatial segmentation equal to or less than the lowest level of
         * spatial segmentation indicated in all the parameter sets.
         */
        hvcc->min_spatial_segmentation_idc = FUNC0(hvcc->min_spatial_segmentation_idc,
                                                   min_spatial_segmentation_idc);

        FUNC3(gb); // max_bytes_per_pic_denom
        FUNC3(gb); // max_bits_per_min_cu_denom
        FUNC3(gb); // log2_max_mv_length_horizontal
        FUNC3(gb); // log2_max_mv_length_vertical
    }
}