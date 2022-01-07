
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* data; } ;
struct TYPE_8__ {int channels; int nb_extended_buf; TYPE_4__** extended_buf; TYPE_4__** extended_data; int * linesize; TYPE_1__** buf; TYPE_4__** data; int format; int nb_samples; int channel_layout; } ;
struct TYPE_7__ {TYPE_4__* data; } ;
typedef TYPE_2__ AVFrame ;


 int AVERROR (int ) ;
 int AV_NUM_DATA_POINTERS ;
 int CHECK_CHANNELS_CONSISTENCY (TYPE_2__*) ;
 int ENOMEM ;
 int FFMIN (int,int) ;
 void* av_buffer_alloc (int ) ;
 int av_frame_unref (TYPE_2__*) ;
 int av_freep (TYPE_4__***) ;
 int av_get_channel_layout_nb_channels (int ) ;
 void* av_mallocz_array (int,int) ;
 int av_sample_fmt_is_planar (int ) ;
 int av_samples_get_buffer_size (int *,int,int ,int ,int) ;

__attribute__((used)) static int get_audio_buffer(AVFrame *frame, int align)
{
    int channels;
    int planar = av_sample_fmt_is_planar(frame->format);
    int planes;
    int ret, i;

    if (!frame->channels)
        frame->channels = av_get_channel_layout_nb_channels(frame->channel_layout);

    channels = frame->channels;
    planes = planar ? channels : 1;

    CHECK_CHANNELS_CONSISTENCY(frame);
    if (!frame->linesize[0]) {
        ret = av_samples_get_buffer_size(&frame->linesize[0], channels,
                                         frame->nb_samples, frame->format,
                                         align);
        if (ret < 0)
            return ret;
    }

    if (planes > AV_NUM_DATA_POINTERS) {
        frame->extended_data = av_mallocz_array(planes,
                                          sizeof(*frame->extended_data));
        frame->extended_buf = av_mallocz_array((planes - AV_NUM_DATA_POINTERS),
                                          sizeof(*frame->extended_buf));
        if (!frame->extended_data || !frame->extended_buf) {
            av_freep(&frame->extended_data);
            av_freep(&frame->extended_buf);
            return AVERROR(ENOMEM);
        }
        frame->nb_extended_buf = planes - AV_NUM_DATA_POINTERS;
    } else
        frame->extended_data = frame->data;

    for (i = 0; i < FFMIN(planes, AV_NUM_DATA_POINTERS); i++) {
        frame->buf[i] = av_buffer_alloc(frame->linesize[0]);
        if (!frame->buf[i]) {
            av_frame_unref(frame);
            return AVERROR(ENOMEM);
        }
        frame->extended_data[i] = frame->data[i] = frame->buf[i]->data;
    }
    for (i = 0; i < planes - AV_NUM_DATA_POINTERS; i++) {
        frame->extended_buf[i] = av_buffer_alloc(frame->linesize[0]);
        if (!frame->extended_buf[i]) {
            av_frame_unref(frame);
            return AVERROR(ENOMEM);
        }
        frame->extended_data[i + AV_NUM_DATA_POINTERS] = frame->extended_buf[i]->data;
    }
    return 0;

}
