
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int sample_fmt; int channels; scalar_t__ frame_size; } ;
struct TYPE_11__ {scalar_t__ nb_samples; int extended_data; int channels; int channel_layout; int format; } ;
typedef TYPE_1__ AVFrame ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 TYPE_1__* av_frame_alloc () ;
 int av_frame_copy_props (TYPE_1__*,TYPE_1__ const*) ;
 int av_frame_free (TYPE_1__**) ;
 int av_frame_get_buffer (TYPE_1__*,int) ;
 int av_samples_copy (int ,int ,int ,int ,scalar_t__,int ,int ) ;
 int av_samples_set_silence (int ,scalar_t__,scalar_t__,int ,int ) ;

__attribute__((used)) static int pad_last_frame(AVCodecContext *s, AVFrame **dst, const AVFrame *src)
{
    AVFrame *frame = ((void*)0);
    int ret;

    if (!(frame = av_frame_alloc()))
        return AVERROR(ENOMEM);

    frame->format = src->format;
    frame->channel_layout = src->channel_layout;
    frame->channels = src->channels;
    frame->nb_samples = s->frame_size;
    ret = av_frame_get_buffer(frame, 32);
    if (ret < 0)
        goto fail;

    ret = av_frame_copy_props(frame, src);
    if (ret < 0)
        goto fail;

    if ((ret = av_samples_copy(frame->extended_data, src->extended_data, 0, 0,
                               src->nb_samples, s->channels, s->sample_fmt)) < 0)
        goto fail;
    if ((ret = av_samples_set_silence(frame->extended_data, src->nb_samples,
                                      frame->nb_samples - src->nb_samples,
                                      s->channels, s->sample_fmt)) < 0)
        goto fail;

    *dst = frame;

    return 0;

fail:
    av_frame_free(&frame);
    return ret;
}
