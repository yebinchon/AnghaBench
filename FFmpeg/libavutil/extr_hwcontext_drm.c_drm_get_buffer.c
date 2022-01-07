
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {scalar_t__ data; } ;
struct TYPE_7__ {int height; int width; int format; TYPE_5__** buf; int ** data; } ;
struct TYPE_6__ {int height; int width; int pool; } ;
typedef TYPE_1__ AVHWFramesContext ;
typedef TYPE_2__ AVFrame ;


 int AVERROR (int ) ;
 int AV_PIX_FMT_DRM_PRIME ;
 int ENOMEM ;
 TYPE_5__* av_buffer_pool_get (int ) ;

__attribute__((used)) static int drm_get_buffer(AVHWFramesContext *hwfc, AVFrame *frame)
{
    frame->buf[0] = av_buffer_pool_get(hwfc->pool);
    if (!frame->buf[0])
        return AVERROR(ENOMEM);

    frame->data[0] = (uint8_t*)frame->buf[0]->data;

    frame->format = AV_PIX_FMT_DRM_PRIME;
    frame->width = hwfc->width;
    frame->height = hwfc->height;

    return 0;
}
