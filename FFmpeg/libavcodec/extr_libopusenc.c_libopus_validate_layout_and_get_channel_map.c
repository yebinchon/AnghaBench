
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int channels; } ;
typedef TYPE_1__ AVCodecContext ;


 int AV_LOG_WARNING ;
 int av_log (TYPE_1__*,int ,char*,int) ;
 int ** ff_vorbis_channel_layout_offsets ;
 int libopus_check_max_channels (TYPE_1__*,int) ;
 int libopus_check_vorbis_layout (TYPE_1__*,int) ;

__attribute__((used)) static int libopus_validate_layout_and_get_channel_map(
        AVCodecContext *avctx,
        int mapping_family,
        const uint8_t ** channel_map_result)
{
    const uint8_t * channel_map = ((void*)0);
    int ret;

    switch (mapping_family) {
    case -1:
        ret = libopus_check_max_channels(avctx, 8);
        if (ret == 0) {
            ret = libopus_check_vorbis_layout(avctx, mapping_family);

        }

        break;
    case 0:
        ret = libopus_check_max_channels(avctx, 2);
        if (ret == 0) {
            ret = libopus_check_vorbis_layout(avctx, mapping_family);
        }
        break;
    case 1:

        ret = libopus_check_max_channels(avctx, 8);
        if (ret == 0) {
            ret = libopus_check_vorbis_layout(avctx, mapping_family);
            channel_map = ff_vorbis_channel_layout_offsets[avctx->channels - 1];
        }
        break;
    case 255:
        ret = libopus_check_max_channels(avctx, 254);
        break;
    default:
        av_log(avctx, AV_LOG_WARNING,
               "Unknown channel mapping family %d. Output channel layout may be invalid.\n",
               mapping_family);
        ret = 0;
    }

    *channel_map_result = channel_map;
    return ret;
}
