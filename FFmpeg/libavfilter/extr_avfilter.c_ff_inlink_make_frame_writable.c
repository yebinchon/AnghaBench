
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_14__ {int type; int h; int w; int dst; } ;
struct TYPE_13__ {int format; int channels; int nb_samples; int extended_data; int height; int width; int linesize; scalar_t__ data; } ;
typedef TYPE_1__ AVFrame ;
typedef TYPE_2__ AVFilterLink ;


 int AVERROR (int ) ;


 int AV_LOG_DEBUG ;
 int EINVAL ;
 int ENOMEM ;
 int av_assert0 (int) ;
 int av_frame_copy_props (TYPE_1__*,TYPE_1__*) ;
 int av_frame_free (TYPE_1__**) ;
 scalar_t__ av_frame_is_writable (TYPE_1__*) ;
 int av_image_copy (scalar_t__,int ,int const**,int ,int ,int ,int ) ;
 int av_log (int ,int ,char*) ;
 int av_samples_copy (int ,int ,int ,int ,int ,int ,int ) ;
 TYPE_1__* ff_get_audio_buffer (TYPE_2__*,int ) ;
 TYPE_1__* ff_get_video_buffer (TYPE_2__*,int ,int ) ;

int ff_inlink_make_frame_writable(AVFilterLink *link, AVFrame **rframe)
{
    AVFrame *frame = *rframe;
    AVFrame *out;
    int ret;

    if (av_frame_is_writable(frame))
        return 0;
    av_log(link->dst, AV_LOG_DEBUG, "Copying data in avfilter.\n");

    switch (link->type) {
    case 128:
        out = ff_get_video_buffer(link, link->w, link->h);
        break;
    case 129:
        out = ff_get_audio_buffer(link, frame->nb_samples);
        break;
    default:
        return AVERROR(EINVAL);
    }
    if (!out)
        return AVERROR(ENOMEM);

    ret = av_frame_copy_props(out, frame);
    if (ret < 0) {
        av_frame_free(&out);
        return ret;
    }

    switch (link->type) {
    case 128:
        av_image_copy(out->data, out->linesize, (const uint8_t **)frame->data, frame->linesize,
                      frame->format, frame->width, frame->height);
        break;
    case 129:
        av_samples_copy(out->extended_data, frame->extended_data,
                        0, 0, frame->nb_samples,
                        frame->channels,
                        frame->format);
        break;
    default:
        av_assert0(!"reached");
    }

    av_frame_free(&frame);
    *rframe = out;
    return 0;
}
