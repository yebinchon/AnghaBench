
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int channels; } ;
typedef TYPE_1__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (TYPE_1__*,int ,char*,int) ;

__attribute__((used)) static int libopus_check_max_channels(AVCodecContext *avctx,
                                      int max_channels) {
    if (avctx->channels > max_channels) {
        av_log(avctx, AV_LOG_ERROR, "Opus mapping family undefined for %d channels.\n",
               avctx->channels);
        return AVERROR(EINVAL);
    }

    return 0;
}
