#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {void* den; void* num; } ;
struct TYPE_11__ {void* chroma_sample_location; } ;
struct TYPE_10__ {int video_signal_type_present_flag; int full_range; int colour_description_present_flag; int timing_info_present_flag; unsigned int num_units_in_tick; unsigned int time_scale; int fixed_frame_rate_flag; int nal_hrd_parameters_present_flag; int vcl_hrd_parameters_present_flag; int pic_struct_present_flag; int bitstream_restriction_flag; unsigned int num_reorder_frames; void* colorspace; void* color_trc; void* color_primaries; TYPE_3__ sar; } ;
typedef  TYPE_1__ SPS ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 void* AVCOL_PRI_UNSPECIFIED ; 
 void* AVCOL_SPC_UNSPECIFIED ; 
 void* AVCOL_TRC_UNSPECIFIED ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 unsigned int EXTENDED_SAR ; 
 unsigned int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*) ; 
 TYPE_3__* ff_h264_pixel_aspect ; 
 void* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ *,int) ; 
 void* FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC12(GetBitContext *gb, AVCodecContext *avctx,
                                        SPS *sps)
{
    int aspect_ratio_info_present_flag;
    unsigned int aspect_ratio_idc;

    aspect_ratio_info_present_flag = FUNC7(gb);

    if (aspect_ratio_info_present_flag) {
        aspect_ratio_idc = FUNC6(gb, 8);
        if (aspect_ratio_idc == EXTENDED_SAR) {
            sps->sar.num = FUNC6(gb, 16);
            sps->sar.den = FUNC6(gb, 16);
        } else if (aspect_ratio_idc < FUNC0(ff_h264_pixel_aspect)) {
            sps->sar = ff_h264_pixel_aspect[aspect_ratio_idc];
        } else {
            FUNC4(avctx, AV_LOG_ERROR, "illegal aspect ratio\n");
            return AVERROR_INVALIDDATA;
        }
    } else {
        sps->sar.num =
        sps->sar.den = 0;
    }

    if (FUNC7(gb))      /* overscan_info_present_flag */
        FUNC7(gb);      /* overscan_appropriate_flag */

    sps->video_signal_type_present_flag = FUNC7(gb);
    if (sps->video_signal_type_present_flag) {
        FUNC6(gb, 3);                 /* video_format */
        sps->full_range = FUNC7(gb); /* video_full_range_flag */

        sps->colour_description_present_flag = FUNC7(gb);
        if (sps->colour_description_present_flag) {
            sps->color_primaries = FUNC6(gb, 8); /* colour_primaries */
            sps->color_trc       = FUNC6(gb, 8); /* transfer_characteristics */
            sps->colorspace      = FUNC6(gb, 8); /* matrix_coefficients */

            // Set invalid values to "unspecified"
            if (!FUNC1(sps->color_primaries))
                sps->color_primaries = AVCOL_PRI_UNSPECIFIED;
            if (!FUNC3(sps->color_trc))
                sps->color_trc = AVCOL_TRC_UNSPECIFIED;
            if (!FUNC2(sps->colorspace))
                sps->colorspace = AVCOL_SPC_UNSPECIFIED;
        }
    }

    /* chroma_location_info_present_flag */
    if (FUNC7(gb)) {
        /* chroma_sample_location_type_top_field */
        avctx->chroma_sample_location = FUNC10(gb) + 1;
        FUNC10(gb);  /* chroma_sample_location_type_bottom_field */
    }

    if (FUNC11(gb) && FUNC8(gb) < 10) {
        FUNC4(avctx, AV_LOG_WARNING, "Truncated VUI\n");
        return 0;
    }

    sps->timing_info_present_flag = FUNC7(gb);
    if (sps->timing_info_present_flag) {
        unsigned num_units_in_tick = FUNC9(gb, 32);
        unsigned time_scale        = FUNC9(gb, 32);
        if (!num_units_in_tick || !time_scale) {
            FUNC4(avctx, AV_LOG_ERROR,
                   "time_scale/num_units_in_tick invalid or unsupported (%u/%u)\n",
                   time_scale, num_units_in_tick);
            sps->timing_info_present_flag = 0;
        } else {
            sps->num_units_in_tick = num_units_in_tick;
            sps->time_scale = time_scale;
        }
        sps->fixed_frame_rate_flag = FUNC7(gb);
    }

    sps->nal_hrd_parameters_present_flag = FUNC7(gb);
    if (sps->nal_hrd_parameters_present_flag)
        if (FUNC5(gb, avctx, sps) < 0)
            return AVERROR_INVALIDDATA;
    sps->vcl_hrd_parameters_present_flag = FUNC7(gb);
    if (sps->vcl_hrd_parameters_present_flag)
        if (FUNC5(gb, avctx, sps) < 0)
            return AVERROR_INVALIDDATA;
    if (sps->nal_hrd_parameters_present_flag ||
        sps->vcl_hrd_parameters_present_flag)
        FUNC7(gb);     /* low_delay_hrd_flag */
    sps->pic_struct_present_flag = FUNC7(gb);
    if (!FUNC8(gb))
        return 0;
    sps->bitstream_restriction_flag = FUNC7(gb);
    if (sps->bitstream_restriction_flag) {
        FUNC7(gb);     /* motion_vectors_over_pic_boundaries_flag */
        FUNC10(gb); /* max_bytes_per_pic_denom */
        FUNC10(gb); /* max_bits_per_mb_denom */
        FUNC10(gb); /* log2_max_mv_length_horizontal */
        FUNC10(gb); /* log2_max_mv_length_vertical */
        sps->num_reorder_frames = FUNC10(gb);
        FUNC10(gb); /*max_dec_frame_buffering*/

        if (FUNC8(gb) < 0) {
            sps->num_reorder_frames         = 0;
            sps->bitstream_restriction_flag = 0;
        }

        if (sps->num_reorder_frames > 16U
            /* max_dec_frame_buffering || max_dec_frame_buffering > 16 */) {
            FUNC4(avctx, AV_LOG_ERROR,
                   "Clipping illegal num_reorder_frames %d\n",
                   sps->num_reorder_frames);
            sps->num_reorder_frames = 16;
            return AVERROR_INVALIDDATA;
        }
    }

    return 0;
}