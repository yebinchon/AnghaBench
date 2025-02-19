
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {TYPE_1__* dst; } ;
struct TYPE_16__ {int nb_samples; } ;
struct TYPE_15__ {TYPE_3__** outputs; } ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_frame_copy (TYPE_2__*,TYPE_2__*) ;
 int av_frame_copy_props (TYPE_2__*,TYPE_2__*) ;
 int av_frame_free (TYPE_2__**) ;
 int ff_filter_frame (TYPE_3__*,TYPE_2__*) ;
 TYPE_2__* ff_get_audio_buffer (TYPE_3__*,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterLink *outlink = inlink->dst->outputs[0];
    AVFrame *out = ff_get_audio_buffer(outlink, in->nb_samples);
    int ret;

    if (!out) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    ret = av_frame_copy_props(out, in);
    if (ret < 0)
        goto fail;
    ret = av_frame_copy(out, in);
    if (ret < 0)
        goto fail;
    av_frame_free(&in);
    return ff_filter_frame(outlink, out);
fail:
    av_frame_free(&in);
    av_frame_free(&out);
    return ret;
}
