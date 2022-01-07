
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {void* den; void* num; } ;
struct TYPE_11__ {void* chroma_sample_location; } ;
struct TYPE_10__ {int video_signal_type_present_flag; int full_range; int colour_description_present_flag; int timing_info_present_flag; unsigned int num_units_in_tick; unsigned int time_scale; int fixed_frame_rate_flag; int nal_hrd_parameters_present_flag; int vcl_hrd_parameters_present_flag; int pic_struct_present_flag; int bitstream_restriction_flag; unsigned int num_reorder_frames; void* colorspace; void* color_trc; void* color_primaries; TYPE_3__ sar; } ;
typedef TYPE_1__ SPS ;
typedef int GetBitContext ;
typedef TYPE_2__ AVCodecContext ;


 void* AVCOL_PRI_UNSPECIFIED ;
 void* AVCOL_SPC_UNSPECIFIED ;
 void* AVCOL_TRC_UNSPECIFIED ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 unsigned int EXTENDED_SAR ;
 unsigned int FF_ARRAY_ELEMS (TYPE_3__*) ;
 int av_color_primaries_name (void*) ;
 int av_color_space_name (void*) ;
 int av_color_transfer_name (void*) ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 scalar_t__ decode_hrd_parameters (int *,TYPE_2__*,TYPE_1__*) ;
 TYPE_3__* ff_h264_pixel_aspect ;
 void* get_bits (int *,int) ;
 int get_bits1 (int *) ;
 scalar_t__ get_bits_left (int *) ;
 unsigned int get_bits_long (int *,int) ;
 void* get_ue_golomb (int *) ;
 scalar_t__ show_bits1 (int *) ;

__attribute__((used)) static inline int decode_vui_parameters(GetBitContext *gb, AVCodecContext *avctx,
                                        SPS *sps)
{
    int aspect_ratio_info_present_flag;
    unsigned int aspect_ratio_idc;

    aspect_ratio_info_present_flag = get_bits1(gb);

    if (aspect_ratio_info_present_flag) {
        aspect_ratio_idc = get_bits(gb, 8);
        if (aspect_ratio_idc == EXTENDED_SAR) {
            sps->sar.num = get_bits(gb, 16);
            sps->sar.den = get_bits(gb, 16);
        } else if (aspect_ratio_idc < FF_ARRAY_ELEMS(ff_h264_pixel_aspect)) {
            sps->sar = ff_h264_pixel_aspect[aspect_ratio_idc];
        } else {
            av_log(avctx, AV_LOG_ERROR, "illegal aspect ratio\n");
            return AVERROR_INVALIDDATA;
        }
    } else {
        sps->sar.num =
        sps->sar.den = 0;
    }

    if (get_bits1(gb))
        get_bits1(gb);

    sps->video_signal_type_present_flag = get_bits1(gb);
    if (sps->video_signal_type_present_flag) {
        get_bits(gb, 3);
        sps->full_range = get_bits1(gb);

        sps->colour_description_present_flag = get_bits1(gb);
        if (sps->colour_description_present_flag) {
            sps->color_primaries = get_bits(gb, 8);
            sps->color_trc = get_bits(gb, 8);
            sps->colorspace = get_bits(gb, 8);


            if (!av_color_primaries_name(sps->color_primaries))
                sps->color_primaries = AVCOL_PRI_UNSPECIFIED;
            if (!av_color_transfer_name(sps->color_trc))
                sps->color_trc = AVCOL_TRC_UNSPECIFIED;
            if (!av_color_space_name(sps->colorspace))
                sps->colorspace = AVCOL_SPC_UNSPECIFIED;
        }
    }


    if (get_bits1(gb)) {

        avctx->chroma_sample_location = get_ue_golomb(gb) + 1;
        get_ue_golomb(gb);
    }

    if (show_bits1(gb) && get_bits_left(gb) < 10) {
        av_log(avctx, AV_LOG_WARNING, "Truncated VUI\n");
        return 0;
    }

    sps->timing_info_present_flag = get_bits1(gb);
    if (sps->timing_info_present_flag) {
        unsigned num_units_in_tick = get_bits_long(gb, 32);
        unsigned time_scale = get_bits_long(gb, 32);
        if (!num_units_in_tick || !time_scale) {
            av_log(avctx, AV_LOG_ERROR,
                   "time_scale/num_units_in_tick invalid or unsupported (%u/%u)\n",
                   time_scale, num_units_in_tick);
            sps->timing_info_present_flag = 0;
        } else {
            sps->num_units_in_tick = num_units_in_tick;
            sps->time_scale = time_scale;
        }
        sps->fixed_frame_rate_flag = get_bits1(gb);
    }

    sps->nal_hrd_parameters_present_flag = get_bits1(gb);
    if (sps->nal_hrd_parameters_present_flag)
        if (decode_hrd_parameters(gb, avctx, sps) < 0)
            return AVERROR_INVALIDDATA;
    sps->vcl_hrd_parameters_present_flag = get_bits1(gb);
    if (sps->vcl_hrd_parameters_present_flag)
        if (decode_hrd_parameters(gb, avctx, sps) < 0)
            return AVERROR_INVALIDDATA;
    if (sps->nal_hrd_parameters_present_flag ||
        sps->vcl_hrd_parameters_present_flag)
        get_bits1(gb);
    sps->pic_struct_present_flag = get_bits1(gb);
    if (!get_bits_left(gb))
        return 0;
    sps->bitstream_restriction_flag = get_bits1(gb);
    if (sps->bitstream_restriction_flag) {
        get_bits1(gb);
        get_ue_golomb(gb);
        get_ue_golomb(gb);
        get_ue_golomb(gb);
        get_ue_golomb(gb);
        sps->num_reorder_frames = get_ue_golomb(gb);
        get_ue_golomb(gb);

        if (get_bits_left(gb) < 0) {
            sps->num_reorder_frames = 0;
            sps->bitstream_restriction_flag = 0;
        }

        if (sps->num_reorder_frames > 16U
                                                                         ) {
            av_log(avctx, AV_LOG_ERROR,
                   "Clipping illegal num_reorder_frames %d\n",
                   sps->num_reorder_frames);
            sps->num_reorder_frames = 16;
            return AVERROR_INVALIDDATA;
        }
    }

    return 0;
}
