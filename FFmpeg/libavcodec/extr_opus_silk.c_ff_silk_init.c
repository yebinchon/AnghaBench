
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int output_channels; int * avctx; } ;
typedef TYPE_1__ SilkContext ;
typedef int AVCodecContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int av_log (int *,int ,char*,int) ;
 TYPE_1__* av_mallocz (int) ;
 int ff_silk_flush (TYPE_1__*) ;

int ff_silk_init(AVCodecContext *avctx, SilkContext **ps, int output_channels)
{
    SilkContext *s;

    if (output_channels != 1 && output_channels != 2) {
        av_log(avctx, AV_LOG_ERROR, "Invalid number of output channels: %d\n",
               output_channels);
        return AVERROR(EINVAL);
    }

    s = av_mallocz(sizeof(*s));
    if (!s)
        return AVERROR(ENOMEM);

    s->avctx = avctx;
    s->output_channels = output_channels;

    ff_silk_flush(s);

    *ps = s;

    return 0;
}
