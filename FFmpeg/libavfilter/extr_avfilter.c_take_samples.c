
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {int samples_skipped; } ;
struct TYPE_18__ {int time_base; TYPE_9__ fifo; int format; int channels; int min_samples; } ;
struct TYPE_17__ {unsigned int nb_samples; int extended_data; int pts; } ;
typedef TYPE_1__ AVFrame ;
typedef TYPE_2__ AVFilterLink ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_assert1 (int ) ;
 int av_frame_copy_props (TYPE_1__*,TYPE_1__*) ;
 int av_frame_free (TYPE_1__**) ;
 int av_samples_copy (int ,int ,unsigned int,int ,unsigned int,int ,int ) ;
 TYPE_1__* ff_framequeue_peek (TYPE_9__*,unsigned int) ;
 unsigned int ff_framequeue_queued_frames (TYPE_9__*) ;
 int ff_framequeue_skip_samples (TYPE_9__*,unsigned int,int ) ;
 TYPE_1__* ff_framequeue_take (TYPE_9__*) ;
 TYPE_1__* ff_get_audio_buffer (TYPE_2__*,unsigned int) ;
 int samples_ready (TYPE_2__*,int ) ;

__attribute__((used)) static int take_samples(AVFilterLink *link, unsigned min, unsigned max,
                        AVFrame **rframe)
{
    AVFrame *frame0, *frame, *buf;
    unsigned nb_samples, nb_frames, i, p;
    int ret;



    av_assert1(samples_ready(link, link->min_samples));
    frame0 = frame = ff_framequeue_peek(&link->fifo, 0);
    if (!link->fifo.samples_skipped && frame->nb_samples >= min && frame->nb_samples <= max) {
        *rframe = ff_framequeue_take(&link->fifo);
        return 0;
    }
    nb_frames = 0;
    nb_samples = 0;
    while (1) {
        if (nb_samples + frame->nb_samples > max) {
            if (nb_samples < min)
                nb_samples = max;
            break;
        }
        nb_samples += frame->nb_samples;
        nb_frames++;
        if (nb_frames == ff_framequeue_queued_frames(&link->fifo))
            break;
        frame = ff_framequeue_peek(&link->fifo, nb_frames);
    }

    buf = ff_get_audio_buffer(link, nb_samples);
    if (!buf)
        return AVERROR(ENOMEM);
    ret = av_frame_copy_props(buf, frame0);
    if (ret < 0) {
        av_frame_free(&buf);
        return ret;
    }
    buf->pts = frame0->pts;

    p = 0;
    for (i = 0; i < nb_frames; i++) {
        frame = ff_framequeue_take(&link->fifo);
        av_samples_copy(buf->extended_data, frame->extended_data, p, 0,
                        frame->nb_samples, link->channels, link->format);
        p += frame->nb_samples;
        av_frame_free(&frame);
    }
    if (p < nb_samples) {
        unsigned n = nb_samples - p;
        frame = ff_framequeue_peek(&link->fifo, 0);
        av_samples_copy(buf->extended_data, frame->extended_data, p, 0, n,
                        link->channels, link->format);
        ff_framequeue_skip_samples(&link->fifo, n, link->time_base);
    }

    *rframe = buf;
    return 0;
}
