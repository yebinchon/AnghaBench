
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_6__ {int format; int width; int height; int* linesize; scalar_t__* data; } ;
typedef TYPE_1__ AVFrame ;


 int AV_PIX_FMT_RGB24 ;
 int AV_PIX_FMT_RGBA ;
 int AV_PIX_FMT_YUV420P ;
 int AV_PIX_FMT_YUVA420P ;
 TYPE_1__* av_frame_alloc () ;
 int av_frame_free (TYPE_1__**) ;
 scalar_t__ av_frame_get_buffer (TYPE_1__*,int) ;
 int memset (scalar_t__,int,int) ;

__attribute__((used)) static AVFrame *alloc_frame_empty(enum AVPixelFormat format, int w, int h)
{
    AVFrame *out;
    out = av_frame_alloc();
    if (!out)
        return ((void*)0);
    out->format = format;
    out->width = w;
    out->height = h;
    if (av_frame_get_buffer(out, 32) < 0) {
        av_frame_free(&out);
        return ((void*)0);
    }
    if (format == AV_PIX_FMT_RGB24 || format == AV_PIX_FMT_RGBA) {
        memset(out->data[0], 0, out->linesize[0] * h);
    } else {
        int hh = (format == AV_PIX_FMT_YUV420P || format == AV_PIX_FMT_YUVA420P) ? h / 2 : h;
        memset(out->data[0], 16, out->linesize[0] * h);
        memset(out->data[1], 128, out->linesize[1] * hh);
        memset(out->data[2], 128, out->linesize[2] * hh);
        if (out->data[3])
            memset(out->data[3], 0, out->linesize[3] * h);
    }
    return out;
}
