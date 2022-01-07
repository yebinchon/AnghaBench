
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_9__ {int height; int width; int format; int ** data; TYPE_6__** buf; } ;
struct TYPE_8__ {int height; int width; int pool; } ;
struct TYPE_7__ {int nb_planes; scalar_t__* planes; } ;
typedef TYPE_1__ AVOpenCLFrameDescriptor ;
typedef TYPE_2__ AVHWFramesContext ;
typedef TYPE_3__ AVFrame ;


 int AVERROR (int ) ;
 int AV_PIX_FMT_OPENCL ;
 int ENOMEM ;
 TYPE_6__* av_buffer_pool_get (int ) ;

__attribute__((used)) static int opencl_get_buffer(AVHWFramesContext *hwfc, AVFrame *frame)
{
    AVOpenCLFrameDescriptor *desc;
    int p;

    frame->buf[0] = av_buffer_pool_get(hwfc->pool);
    if (!frame->buf[0])
        return AVERROR(ENOMEM);

    desc = (AVOpenCLFrameDescriptor*)frame->buf[0]->data;

    for (p = 0; p < desc->nb_planes; p++)
        frame->data[p] = (uint8_t*)desc->planes[p];

    frame->format = AV_PIX_FMT_OPENCL;
    frame->width = hwfc->width;
    frame->height = hwfc->height;

    return 0;
}
