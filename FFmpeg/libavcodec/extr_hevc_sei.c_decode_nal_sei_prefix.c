
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int alternative_transfer; int content_light; int mastering_display; int display_orientation; int frame_packing; int picture_hash; } ;
typedef TYPE_1__ HEVCSEI ;
typedef int HEVCParamSets ;
typedef int GetBitContext ;


 int AV_LOG_DEBUG ;
 int av_log (void*,int ,char*,int) ;
 int decode_nal_sei_active_parameter_sets (TYPE_1__*,int *,void*) ;
 int decode_nal_sei_alternative_transfer (int *,int *) ;
 int decode_nal_sei_content_light_info (int *,int *) ;
 int decode_nal_sei_decoded_picture_hash (int *,int *) ;
 int decode_nal_sei_display_orientation (int *,int *) ;
 int decode_nal_sei_frame_packing_arrangement (int *,int *) ;
 int decode_nal_sei_mastering_display_info (int *,int *) ;
 int decode_nal_sei_pic_timing (TYPE_1__*,int *,int const*,void*,int) ;
 int decode_nal_sei_user_data_registered_itu_t_t35 (TYPE_1__*,int *,int) ;
 int skip_bits_long (int *,int) ;

__attribute__((used)) static int decode_nal_sei_prefix(GetBitContext *gb, void *logctx, HEVCSEI *s,
                                 const HEVCParamSets *ps, int type, int size)
{
    switch (type) {
    case 256:
        return decode_nal_sei_decoded_picture_hash(&s->picture_hash, gb);
    case 131:
        return decode_nal_sei_frame_packing_arrangement(&s->frame_packing, gb);
    case 132:
        return decode_nal_sei_display_orientation(&s->display_orientation, gb);
    case 129:
        return decode_nal_sei_pic_timing(s, gb, ps, logctx, size);
    case 130:
        return decode_nal_sei_mastering_display_info(&s->mastering_display, gb);
    case 133:
        return decode_nal_sei_content_light_info(&s->content_light, gb);
    case 135:
        return decode_nal_sei_active_parameter_sets(s, gb, logctx);
    case 128:
        return decode_nal_sei_user_data_registered_itu_t_t35(s, gb, size);
    case 134:
        return decode_nal_sei_alternative_transfer(&s->alternative_transfer, gb);
    default:
        av_log(logctx, AV_LOG_DEBUG, "Skipped PREFIX SEI %d\n", type);
        skip_bits_long(gb, 8 * size);
        return 0;
    }
}
