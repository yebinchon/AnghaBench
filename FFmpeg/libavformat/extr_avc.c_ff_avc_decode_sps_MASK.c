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
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int num; int den; } ;
struct TYPE_6__ {int profile_idc; int constraint_set_flags; int id; int chroma_format_idc; int bit_depth_luma; int frame_mbs_only_flag; TYPE_3__ sar; void* level_idc; } ;
typedef  TYPE_1__ H264SequenceParameterSet ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int) ; 
 TYPE_3__* avc_sample_aspect_ratio ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,int,int*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

H264SequenceParameterSet *FUNC11(const uint8_t *buf, int buf_size)
{
    int i, j, ret, rbsp_size, aspect_ratio_idc, pic_order_cnt_type;
    int num_ref_frames_in_pic_order_cnt_cycle;
    int delta_scale, lastScale = 8, nextScale = 8;
    int sizeOfScalingList;
    H264SequenceParameterSet *sps = NULL;
    GetBitContext gb;
    uint8_t *rbsp_buf;

    rbsp_buf = FUNC3(buf, buf_size, &rbsp_size, 0);
    if (!rbsp_buf)
        return NULL;

    ret = FUNC8(&gb, rbsp_buf, rbsp_size);
    if (ret < 0)
        goto end;

    sps = FUNC2(sizeof(*sps));
    if (!sps)
        goto end;

    sps->profile_idc = FUNC4(&gb, 8);
    sps->constraint_set_flags |= FUNC5(&gb) << 0; // constraint_set0_flag
    sps->constraint_set_flags |= FUNC5(&gb) << 1; // constraint_set1_flag
    sps->constraint_set_flags |= FUNC5(&gb) << 2; // constraint_set2_flag
    sps->constraint_set_flags |= FUNC5(&gb) << 3; // constraint_set3_flag
    sps->constraint_set_flags |= FUNC5(&gb) << 4; // constraint_set4_flag
    sps->constraint_set_flags |= FUNC5(&gb) << 5; // constraint_set5_flag
    FUNC9(&gb, 2); // reserved_zero_2bits
    sps->level_idc = FUNC4(&gb, 8);
    sps->id = FUNC7(&gb);

    if (sps->profile_idc == 100 || sps->profile_idc == 110 ||
        sps->profile_idc == 122 || sps->profile_idc == 244 || sps->profile_idc ==  44 ||
        sps->profile_idc ==  83 || sps->profile_idc ==  86 || sps->profile_idc == 118 ||
        sps->profile_idc == 128 || sps->profile_idc == 138 || sps->profile_idc == 139 ||
        sps->profile_idc == 134) {
        sps->chroma_format_idc = FUNC7(&gb); // chroma_format_idc
        if (sps->chroma_format_idc == 3) {
            FUNC10(&gb); // separate_colour_plane_flag
        }
        sps->bit_depth_luma = FUNC7(&gb) + 8;
        FUNC7(&gb); // bit_depth_chroma_minus8
        FUNC10(&gb); // qpprime_y_zero_transform_bypass_flag
        if (FUNC5(&gb)) { // seq_scaling_matrix_present_flag
            for (i = 0; i < ((sps->chroma_format_idc != 3) ? 8 : 12); i++) {
                if (!FUNC5(&gb)) // seq_scaling_list_present_flag
                    continue;
                lastScale = 8;
                nextScale = 8;
                sizeOfScalingList = i < 6 ? 16 : 64;
                for (j = 0; j < sizeOfScalingList; j++) {
                    if (nextScale != 0) {
                        delta_scale = FUNC6(&gb);
                        nextScale = (lastScale + delta_scale) & 0xff;
                    }
                    lastScale = nextScale == 0 ? lastScale : nextScale;
                }
            }
        }
    } else {
        sps->chroma_format_idc = 1;
        sps->bit_depth_luma = 8;
    }

    FUNC7(&gb); // log2_max_frame_num_minus4
    pic_order_cnt_type = FUNC7(&gb);

    if (pic_order_cnt_type == 0) {
        FUNC7(&gb); // log2_max_pic_order_cnt_lsb_minus4
    } else if (pic_order_cnt_type == 1) {
        FUNC10(&gb);    // delta_pic_order_always_zero
        FUNC6(&gb); // offset_for_non_ref_pic
        FUNC6(&gb); // offset_for_top_to_bottom_field
        num_ref_frames_in_pic_order_cnt_cycle = FUNC7(&gb);
        for (i = 0; i < num_ref_frames_in_pic_order_cnt_cycle; i++)
            FUNC6(&gb); // offset_for_ref_frame
    }

    FUNC7(&gb); // max_num_ref_frames
    FUNC10(&gb); // gaps_in_frame_num_value_allowed_flag
    FUNC7(&gb); // pic_width_in_mbs_minus1
    FUNC7(&gb); // pic_height_in_map_units_minus1

    sps->frame_mbs_only_flag = FUNC5(&gb);
    if (!sps->frame_mbs_only_flag)
        FUNC10(&gb); // mb_adaptive_frame_field_flag

    FUNC10(&gb); // direct_8x8_inference_flag

    if (FUNC5(&gb)) { // frame_cropping_flag
        FUNC7(&gb); // frame_crop_left_offset
        FUNC7(&gb); // frame_crop_right_offset
        FUNC7(&gb); // frame_crop_top_offset
        FUNC7(&gb); // frame_crop_bottom_offset
    }

    if (FUNC5(&gb)) { // vui_parameters_present_flag
        if (FUNC5(&gb)) { // aspect_ratio_info_present_flag
            aspect_ratio_idc = FUNC4(&gb, 8);
            if (aspect_ratio_idc == 0xff) {
                sps->sar.num = FUNC4(&gb, 16);
                sps->sar.den = FUNC4(&gb, 16);
            } else if (aspect_ratio_idc < FUNC0(avc_sample_aspect_ratio)) {
                sps->sar = avc_sample_aspect_ratio[aspect_ratio_idc];
            }
        }
    }

    if (!sps->sar.den) {
        sps->sar.num = 1;
        sps->sar.den = 1;
    }

 end:
    FUNC1(rbsp_buf);
    return sps;
}