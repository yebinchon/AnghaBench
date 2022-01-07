
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int channels; int channel_layout; TYPE_1__* dst; } ;
struct TYPE_16__ {int nb_samples; int channels; int channel_layout; scalar_t__ extended_data; } ;
struct TYPE_15__ {int swr; } ;
struct TYPE_14__ {TYPE_2__* priv; TYPE_4__** outputs; } ;
typedef TYPE_2__ PanContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_frame_copy_props (TYPE_3__*,TYPE_3__*) ;
 int av_frame_free (TYPE_3__**) ;
 int ff_filter_frame (TYPE_4__* const,TYPE_3__*) ;
 TYPE_3__* ff_get_audio_buffer (TYPE_4__* const,int) ;
 int swr_convert (int ,scalar_t__,int,void*,int) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *insamples)
{
    int ret;
    int n = insamples->nb_samples;
    AVFilterLink *const outlink = inlink->dst->outputs[0];
    AVFrame *outsamples = ff_get_audio_buffer(outlink, n);
    PanContext *pan = inlink->dst->priv;

    if (!outsamples) {
        av_frame_free(&insamples);
        return AVERROR(ENOMEM);
    }
    swr_convert(pan->swr, outsamples->extended_data, n,
                (void *)insamples->extended_data, n);
    av_frame_copy_props(outsamples, insamples);
    outsamples->channel_layout = outlink->channel_layout;
    outsamples->channels = outlink->channels;

    ret = ff_filter_frame(outlink, outsamples);
    av_frame_free(&insamples);
    return ret;
}
