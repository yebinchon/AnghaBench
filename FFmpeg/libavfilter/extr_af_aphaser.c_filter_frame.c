
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {TYPE_1__* dst; } ;
struct TYPE_18__ {int channels; int nb_samples; int extended_data; } ;
struct TYPE_17__ {int (* phaser ) (TYPE_2__*,int ,int ,int ,int ) ;} ;
struct TYPE_16__ {TYPE_4__** outputs; TYPE_2__* priv; } ;
typedef TYPE_2__ AudioPhaserContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_frame_copy_props (TYPE_3__*,TYPE_3__*) ;
 int av_frame_free (TYPE_3__**) ;
 scalar_t__ av_frame_is_writable (TYPE_3__*) ;
 int ff_filter_frame (TYPE_4__*,TYPE_3__*) ;
 TYPE_3__* ff_get_audio_buffer (TYPE_4__*,int ) ;
 int stub1 (TYPE_2__*,int ,int ,int ,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *inbuf)
{
    AudioPhaserContext *s = inlink->dst->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];
    AVFrame *outbuf;

    if (av_frame_is_writable(inbuf)) {
        outbuf = inbuf;
    } else {
        outbuf = ff_get_audio_buffer(outlink, inbuf->nb_samples);
        if (!outbuf) {
            av_frame_free(&inbuf);
            return AVERROR(ENOMEM);
        }
        av_frame_copy_props(outbuf, inbuf);
    }

    s->phaser(s, inbuf->extended_data, outbuf->extended_data,
              outbuf->nb_samples, outbuf->channels);

    if (inbuf != outbuf)
        av_frame_free(&inbuf);

    return ff_filter_frame(outlink, outbuf);
}
