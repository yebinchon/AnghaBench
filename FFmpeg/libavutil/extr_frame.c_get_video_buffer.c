
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * data; } ;
struct TYPE_5__ {int width; int height; int* linesize; scalar_t__* data; scalar_t__* extended_data; TYPE_4__** buf; int format; } ;
typedef int AVPixFmtDescriptor ;
typedef TYPE_1__ AVFrame ;


 int AVERROR (int ) ;
 int EINVAL ;
 int ENOMEM ;
 void* FFALIGN (int,int) ;
 int FFMAX (int,int) ;
 TYPE_4__* av_buffer_alloc (int) ;
 int av_frame_unref (TYPE_1__*) ;
 int av_image_check_size (int,int,int ,int *) ;
 int av_image_fill_linesizes (int*,int ,void*) ;
 int av_image_fill_pointers (scalar_t__*,int ,int,int *,int*) ;
 int * av_pix_fmt_desc_get (int ) ;

__attribute__((used)) static int get_video_buffer(AVFrame *frame, int align)
{
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(frame->format);
    int ret, i, padded_height;
    int plane_padding = FFMAX(16 + 16 , align);

    if (!desc)
        return AVERROR(EINVAL);

    if ((ret = av_image_check_size(frame->width, frame->height, 0, ((void*)0))) < 0)
        return ret;

    if (!frame->linesize[0]) {
        if (align <= 0)
            align = 32;

        for(i=1; i<=align; i+=i) {
            ret = av_image_fill_linesizes(frame->linesize, frame->format,
                                          FFALIGN(frame->width, i));
            if (ret < 0)
                return ret;
            if (!(frame->linesize[0] & (align-1)))
                break;
        }

        for (i = 0; i < 4 && frame->linesize[i]; i++)
            frame->linesize[i] = FFALIGN(frame->linesize[i], align);
    }

    padded_height = FFALIGN(frame->height, 32);
    if ((ret = av_image_fill_pointers(frame->data, frame->format, padded_height,
                                      ((void*)0), frame->linesize)) < 0)
        return ret;

    frame->buf[0] = av_buffer_alloc(ret + 4*plane_padding);
    if (!frame->buf[0]) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    if ((ret = av_image_fill_pointers(frame->data, frame->format, padded_height,
                                      frame->buf[0]->data, frame->linesize)) < 0)
        goto fail;

    for (i = 1; i < 4; i++) {
        if (frame->data[i])
            frame->data[i] += i * plane_padding;
    }

    frame->extended_data = frame->data;

    return 0;
fail:
    av_frame_unref(frame);
    return ret;
}
