
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int alternative_transfer; int green_metadata; int display_orientation; int frame_packing; int buffering_period; int recovery_point; int unregistered; int picture_timing; } ;
typedef TYPE_1__ H264SEIContext ;
typedef int H264ParamSets ;
typedef int GetBitContext ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_PS_NOT_FOUND ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int align_get_bits (int *) ;
 int av_log (void*,int ,char*,int,...) ;
 int decode_alternative_transfer (int *,int *) ;
 int decode_buffering_period (int *,int *,int const*,void*) ;
 int decode_display_orientation (int *,int *) ;
 int decode_frame_packing_arrangement (int *,int *) ;
 int decode_green_metadata (int *,int *) ;
 int decode_picture_timing (int *,int *,int const*,void*) ;
 int decode_recovery_point (int *,int *,void*) ;
 int decode_registered_user_data (TYPE_1__*,int *,void*,unsigned int) ;
 int decode_unregistered_user_data (int *,int *,void*,unsigned int) ;
 int get_bits (int *,int) ;
 unsigned int get_bits_count (int *) ;
 int get_bits_left (int *) ;
 scalar_t__ show_bits (int *,int) ;
 int skip_bits_long (int *,unsigned int) ;

int ff_h264_sei_decode(H264SEIContext *h, GetBitContext *gb,
                       const H264ParamSets *ps, void *logctx)
{
    int master_ret = 0;

    while (get_bits_left(gb) > 16 && show_bits(gb, 16)) {
        int type = 0;
        unsigned size = 0;
        unsigned next;
        int ret = 0;

        do {
            if (get_bits_left(gb) < 8)
                return AVERROR_INVALIDDATA;
            type += show_bits(gb, 8);
        } while (get_bits(gb, 8) == 255);

        do {
            if (get_bits_left(gb) < 8)
                return AVERROR_INVALIDDATA;
            size += show_bits(gb, 8);
        } while (get_bits(gb, 8) == 255);

        if (size > get_bits_left(gb) / 8) {
            av_log(logctx, AV_LOG_ERROR, "SEI type %d size %d truncated at %d\n",
                   type, 8*size, get_bits_left(gb));
            return AVERROR_INVALIDDATA;
        }
        next = get_bits_count(gb) + 8 * size;

        switch (type) {
        case 131:
            ret = decode_picture_timing(&h->picture_timing, gb, ps, logctx);
            break;
        case 129:
            ret = decode_registered_user_data(h, gb, logctx, size);
            break;
        case 128:
            ret = decode_unregistered_user_data(&h->unregistered, gb, logctx, size);
            break;
        case 130:
            ret = decode_recovery_point(&h->recovery_point, gb, logctx);
            break;
        case 135:
            ret = decode_buffering_period(&h->buffering_period, gb, ps, logctx);
            break;
        case 133:
            ret = decode_frame_packing_arrangement(&h->frame_packing, gb);
            break;
        case 134:
            ret = decode_display_orientation(&h->display_orientation, gb);
            break;
        case 132:
            ret = decode_green_metadata(&h->green_metadata, gb);
            break;
        case 136:
            ret = decode_alternative_transfer(&h->alternative_transfer, gb);
            break;
        default:
            av_log(logctx, AV_LOG_DEBUG, "unknown SEI type %d\n", type);
        }
        if (ret < 0 && ret != AVERROR_PS_NOT_FOUND)
            return ret;
        if (ret < 0)
            master_ret = ret;

        skip_bits_long(gb, next - get_bits_count(gb));


        align_get_bits(gb);
    }

    return master_ret;
}
