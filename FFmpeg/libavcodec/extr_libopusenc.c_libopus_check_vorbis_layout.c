
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int name ;
struct TYPE_4__ {int channels; scalar_t__ channel_layout; } ;
typedef TYPE_1__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int EINVAL ;
 int FF_ARRAY_ELEMS (scalar_t__*) ;
 int av_assert2 (int) ;
 int av_get_channel_layout_string (char*,int,int,scalar_t__) ;
 int av_log (TYPE_1__*,int ,char*,...) ;
 scalar_t__* ff_vorbis_channel_layouts ;

__attribute__((used)) static int libopus_check_vorbis_layout(AVCodecContext *avctx, int mapping_family) {
    av_assert2(avctx->channels < FF_ARRAY_ELEMS(ff_vorbis_channel_layouts));

    if (!avctx->channel_layout) {
        av_log(avctx, AV_LOG_WARNING,
               "No channel layout specified. Opus encoder will use Vorbis "
               "channel layout for %d channels.\n", avctx->channels);
    } else if (avctx->channel_layout != ff_vorbis_channel_layouts[avctx->channels - 1]) {
        char name[32];
        av_get_channel_layout_string(name, sizeof(name), avctx->channels,
                                     avctx->channel_layout);
        av_log(avctx, AV_LOG_ERROR,
               "Invalid channel layout %s for specified mapping family %d.\n",
               name, mapping_family);

        return AVERROR(EINVAL);
    }

    return 0;
}
