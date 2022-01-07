
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int level; int tier; void* profile; } ;
typedef int GetBitContext ;
typedef TYPE_1__ AV1SequenceParameters ;


 int AV1_OBU_SEQUENCE_HEADER ;
 int AVERROR_INVALIDDATA ;
 void* get_bits (int *,int) ;
 int get_bits1 (int *) ;
 scalar_t__ get_bits_left (int *) ;
 int get_obu_bit_length (int const*,int,int ) ;
 int init_get_bits (int *,int const*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int parse_color_config (TYPE_1__*,int *) ;
 int skip_bits (int *,int) ;
 int skip_bits1 (int *) ;
 int skip_bits_long (int *,int) ;
 int uvlc (int *) ;

__attribute__((used)) static int parse_sequence_header(AV1SequenceParameters *seq_params, const uint8_t *buf, int size)
{
    GetBitContext gb;
    int reduced_still_picture_header;
    int frame_width_bits_minus_1, frame_height_bits_minus_1;
    int size_bits, ret;

    size_bits = get_obu_bit_length(buf, size, AV1_OBU_SEQUENCE_HEADER);
    if (size_bits < 0)
        return size_bits;

    ret = init_get_bits(&gb, buf, size_bits);
    if (ret < 0)
        return ret;

    memset(seq_params, 0, sizeof(*seq_params));

    seq_params->profile = get_bits(&gb, 3);

    skip_bits1(&gb);
    reduced_still_picture_header = get_bits1(&gb);

    if (reduced_still_picture_header) {
        seq_params->level = get_bits(&gb, 5);
        seq_params->tier = 0;
    } else {
        int initial_display_delay_present_flag, operating_points_cnt_minus_1;
        int decoder_model_info_present_flag, buffer_delay_length_minus_1;

        if (get_bits1(&gb)) {
            skip_bits_long(&gb, 32);
            skip_bits_long(&gb, 32);

            if (get_bits1(&gb))
                uvlc(&gb);

            decoder_model_info_present_flag = get_bits1(&gb);
            if (decoder_model_info_present_flag) {
                buffer_delay_length_minus_1 = get_bits(&gb, 5);
                skip_bits_long(&gb, 32);
                skip_bits(&gb, 10);

            }
        } else
            decoder_model_info_present_flag = 0;

        initial_display_delay_present_flag = get_bits1(&gb);

        operating_points_cnt_minus_1 = get_bits(&gb, 5);
        for (int i = 0; i <= operating_points_cnt_minus_1; i++) {
            int seq_level_idx, seq_tier;

            skip_bits(&gb, 12);
            seq_level_idx = get_bits(&gb, 5);

            if (seq_level_idx > 7)
                seq_tier = get_bits1(&gb);
            else
                seq_tier = 0;

            if (decoder_model_info_present_flag) {
                if (get_bits1(&gb)) {
                    skip_bits_long(&gb, buffer_delay_length_minus_1 + 1);
                    skip_bits_long(&gb, buffer_delay_length_minus_1 + 1);
                    skip_bits1(&gb);
                }
            }

            if (initial_display_delay_present_flag) {
                if (get_bits1(&gb))
                    skip_bits(&gb, 4);
            }

            if (i == 0) {
               seq_params->level = seq_level_idx;
               seq_params->tier = seq_tier;
            }
        }
    }

    frame_width_bits_minus_1 = get_bits(&gb, 4);
    frame_height_bits_minus_1 = get_bits(&gb, 4);

    skip_bits(&gb, frame_width_bits_minus_1 + 1);
    skip_bits(&gb, frame_height_bits_minus_1 + 1);

    if (!reduced_still_picture_header) {
        if (get_bits1(&gb))
            skip_bits(&gb, 7);
    }

    skip_bits(&gb, 3);

    if (!reduced_still_picture_header) {
        int enable_order_hint, seq_force_screen_content_tools;

        skip_bits(&gb, 4);


        enable_order_hint = get_bits1(&gb);
        if (enable_order_hint)
            skip_bits(&gb, 2);

        if (get_bits1(&gb))
            seq_force_screen_content_tools = 2;
        else
            seq_force_screen_content_tools = get_bits1(&gb);

        if (seq_force_screen_content_tools) {
            if (!get_bits1(&gb))
                skip_bits1(&gb);
        }

        if (enable_order_hint)
            skip_bits(&gb, 3);
    }

    skip_bits(&gb, 3);

    parse_color_config(seq_params, &gb);

    skip_bits1(&gb);

    if (get_bits_left(&gb))
        return AVERROR_INVALIDDATA;

    return 0;
}
