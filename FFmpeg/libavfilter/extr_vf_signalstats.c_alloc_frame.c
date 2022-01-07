
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_6__ {int format; int width; int height; } ;
typedef TYPE_1__ AVFrame ;


 TYPE_1__* av_frame_alloc () ;
 int av_frame_free (TYPE_1__**) ;
 scalar_t__ av_frame_get_buffer (TYPE_1__*,int) ;

__attribute__((used)) static AVFrame *alloc_frame(enum AVPixelFormat pixfmt, int w, int h)
{
    AVFrame *frame = av_frame_alloc();
    if (!frame)
        return ((void*)0);

    frame->format = pixfmt;
    frame->width = w;
    frame->height = h;

    if (av_frame_get_buffer(frame, 32) < 0) {
        av_frame_free(&frame);
        return ((void*)0);
    }

    return frame;
}
