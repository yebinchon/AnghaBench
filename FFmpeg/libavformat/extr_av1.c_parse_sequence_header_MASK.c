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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int level; int tier; void* profile; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ AV1SequenceParameters ;

/* Variables and functions */
 int /*<<< orphan*/  AV1_OBU_SEQUENCE_HEADER ; 
 int AVERROR_INVALIDDATA ; 
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(AV1SequenceParameters *seq_params, const uint8_t *buf, int size)
{
    GetBitContext gb;
    int reduced_still_picture_header;
    int frame_width_bits_minus_1, frame_height_bits_minus_1;
    int size_bits, ret;

    size_bits = FUNC3(buf, size, AV1_OBU_SEQUENCE_HEADER);
    if (size_bits < 0)
        return size_bits;

    ret = FUNC4(&gb, buf, size_bits);
    if (ret < 0)
        return ret;

    FUNC5(seq_params, 0, sizeof(*seq_params));

    seq_params->profile = FUNC0(&gb, 3);

    FUNC8(&gb); // still_picture
    reduced_still_picture_header = FUNC1(&gb);

    if (reduced_still_picture_header) {
        seq_params->level = FUNC0(&gb, 5);
        seq_params->tier = 0;
    } else {
        int initial_display_delay_present_flag, operating_points_cnt_minus_1;
        int decoder_model_info_present_flag, buffer_delay_length_minus_1;

        if (FUNC1(&gb)) { // timing_info_present_flag
            FUNC9(&gb, 32); // num_units_in_display_tick
            FUNC9(&gb, 32); // time_scale

            if (FUNC1(&gb)) // equal_picture_interval
                FUNC10(&gb); // num_ticks_per_picture_minus_1

            decoder_model_info_present_flag = FUNC1(&gb);
            if (decoder_model_info_present_flag) {
                buffer_delay_length_minus_1 = FUNC0(&gb, 5);
                FUNC9(&gb, 32); // num_units_in_decoding_tick
                FUNC7(&gb, 10); // buffer_removal_time_length_minus_1 (5)
                                    // frame_presentation_time_length_minus_1 (5)
            }
        } else
            decoder_model_info_present_flag = 0;

        initial_display_delay_present_flag = FUNC1(&gb);

        operating_points_cnt_minus_1 = FUNC0(&gb, 5);
        for (int i = 0; i <= operating_points_cnt_minus_1; i++) {
            int seq_level_idx, seq_tier;

            FUNC7(&gb, 12); // operating_point_idc
            seq_level_idx = FUNC0(&gb, 5);

            if (seq_level_idx > 7)
                seq_tier = FUNC1(&gb);
            else
                seq_tier = 0;

            if (decoder_model_info_present_flag) {
                if (FUNC1(&gb)) { // decoder_model_present_for_this_op
                    FUNC9(&gb, buffer_delay_length_minus_1 + 1); // decoder_buffer_delay
                    FUNC9(&gb, buffer_delay_length_minus_1 + 1); // encoder_buffer_delay
                    FUNC8(&gb); // low_delay_mode_flag
                }
            }

            if (initial_display_delay_present_flag) {
                if (FUNC1(&gb)) // initial_display_delay_present_for_this_op
                    FUNC7(&gb, 4); // initial_display_delay_minus_1
            }

            if (i == 0) {
               seq_params->level = seq_level_idx;
               seq_params->tier = seq_tier;
            }
        }
    }

    frame_width_bits_minus_1  = FUNC0(&gb, 4);
    frame_height_bits_minus_1 = FUNC0(&gb, 4);

    FUNC7(&gb, frame_width_bits_minus_1 + 1); // max_frame_width_minus_1
    FUNC7(&gb, frame_height_bits_minus_1 + 1); // max_frame_height_minus_1

    if (!reduced_still_picture_header) {
        if (FUNC1(&gb)) // frame_id_numbers_present_flag
            FUNC7(&gb, 7); // delta_frame_id_length_minus_2 (4), additional_frame_id_length_minus_1 (3)
    }

    FUNC7(&gb, 3); // use_128x128_superblock (1), enable_filter_intra (1), enable_intra_edge_filter (1)

    if (!reduced_still_picture_header) {
        int enable_order_hint, seq_force_screen_content_tools;

        FUNC7(&gb, 4); // enable_intraintra_compound (1), enable_masked_compound (1)
                           // enable_warped_motion (1), enable_dual_filter (1)

        enable_order_hint = FUNC1(&gb);
        if (enable_order_hint)
            FUNC7(&gb, 2); // enable_jnt_comp (1), enable_ref_frame_mvs (1)

        if (FUNC1(&gb)) // seq_choose_screen_content_tools
            seq_force_screen_content_tools = 2;
        else
            seq_force_screen_content_tools = FUNC1(&gb);

        if (seq_force_screen_content_tools) {
            if (!FUNC1(&gb)) // seq_choose_integer_mv
                FUNC8(&gb); // seq_force_integer_mv
        }

        if (enable_order_hint)
            FUNC7(&gb, 3); // order_hint_bits_minus_1
    }

    FUNC7(&gb, 3); // enable_superres (1), enable_cdef (1), enable_restoration (1)

    FUNC6(seq_params, &gb);

    FUNC8(&gb); // film_grain_params_present

    if (FUNC2(&gb))
        return AVERROR_INVALIDDATA;

    return 0;
}