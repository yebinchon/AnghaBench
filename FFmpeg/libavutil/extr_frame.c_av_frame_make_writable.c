
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_11__ {scalar_t__ data; scalar_t__ extended_data; int nb_samples; int channel_layout; int channels; int height; int width; int format; int * buf; } ;
typedef TYPE_1__ AVFrame ;


 int AVERROR (int ) ;
 int EINVAL ;
 int av_frame_copy (TYPE_1__*,TYPE_1__*) ;
 int av_frame_copy_props (TYPE_1__*,TYPE_1__*) ;
 int av_frame_get_buffer (TYPE_1__*,int) ;
 scalar_t__ av_frame_is_writable (TYPE_1__*) ;
 int av_frame_unref (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

int av_frame_make_writable(AVFrame *frame)
{
    AVFrame tmp;
    int ret;

    if (!frame->buf[0])
        return AVERROR(EINVAL);

    if (av_frame_is_writable(frame))
        return 0;

    memset(&tmp, 0, sizeof(tmp));
    tmp.format = frame->format;
    tmp.width = frame->width;
    tmp.height = frame->height;
    tmp.channels = frame->channels;
    tmp.channel_layout = frame->channel_layout;
    tmp.nb_samples = frame->nb_samples;
    ret = av_frame_get_buffer(&tmp, 32);
    if (ret < 0)
        return ret;

    ret = av_frame_copy(&tmp, frame);
    if (ret < 0) {
        av_frame_unref(&tmp);
        return ret;
    }

    ret = av_frame_copy_props(&tmp, frame);
    if (ret < 0) {
        av_frame_unref(&tmp);
        return ret;
    }

    av_frame_unref(frame);

    *frame = tmp;
    if (tmp.data == tmp.extended_data)
        frame->extended_data = frame->data;

    return 0;
}
