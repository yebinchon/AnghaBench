
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int width; int height; int** data; size_t* linesize; int format; } ;
typedef TYPE_1__ AVFrame ;


 TYPE_1__* av_frame_alloc () ;
 int av_frame_free (TYPE_1__**) ;
 scalar_t__ av_frame_get_buffer (TYPE_1__*,int) ;

__attribute__((used)) static AVFrame *downscale(AVFrame *in)
{
    int x, y;
    AVFrame *frame = av_frame_alloc();
    uint8_t *src, *dst;
    if (!frame)
        return ((void*)0);

    frame->format = in->format;
    frame->width = (in->width + 1) / 2;
    frame->height = (in->height+ 1) / 2;

    if (av_frame_get_buffer(frame, 32) < 0) {
        av_frame_free(&frame);
        return ((void*)0);
    }
    src = in ->data[0];
    dst = frame->data[0];

    for(y = 0; y < frame->height; y++) {
        for(x = 0; x < frame->width; x++) {
            dst[x] = ( src[2*x+0]
                      + src[2*x+1]
                      + src[2*x+0 + in->linesize[0]]
                      + src[2*x+1 + in->linesize[0]]
                      + 2) >> 2;
        }
        src += 2*in->linesize[0];
        dst += frame->linesize[0];
    }
    return frame;
}
