
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int size; int * data; } ;
struct TYPE_7__ {int channels; int nb_extended_buf; TYPE_2__** extended_buf; TYPE_2__** buf; int ** extended_data; int format; scalar_t__ nb_samples; } ;
typedef TYPE_1__ AVFrame ;
typedef TYPE_2__ AVBufferRef ;


 int CHECK_CHANNELS_CONSISTENCY (TYPE_1__*) ;
 int FF_ARRAY_ELEMS (TYPE_2__**) ;
 scalar_t__ av_sample_fmt_is_planar (int ) ;

AVBufferRef *av_frame_get_plane_buffer(AVFrame *frame, int plane)
{
    uint8_t *data;
    int planes, i;

    if (frame->nb_samples) {
        int channels = frame->channels;
        if (!channels)
            return ((void*)0);
        CHECK_CHANNELS_CONSISTENCY(frame);
        planes = av_sample_fmt_is_planar(frame->format) ? channels : 1;
    } else
        planes = 4;

    if (plane < 0 || plane >= planes || !frame->extended_data[plane])
        return ((void*)0);
    data = frame->extended_data[plane];

    for (i = 0; i < FF_ARRAY_ELEMS(frame->buf) && frame->buf[i]; i++) {
        AVBufferRef *buf = frame->buf[i];
        if (data >= buf->data && data < buf->data + buf->size)
            return buf;
    }
    for (i = 0; i < frame->nb_extended_buf; i++) {
        AVBufferRef *buf = frame->extended_buf[i];
        if (data >= buf->data && data < buf->data + buf->size)
            return buf;
    }
    return ((void*)0);
}
