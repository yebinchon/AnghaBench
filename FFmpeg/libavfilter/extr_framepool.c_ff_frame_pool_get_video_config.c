
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_3__ {scalar_t__ type; int width; int height; int format; int align; } ;
typedef TYPE_1__ FFFramePool ;


 int AVERROR (int ) ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int EINVAL ;
 int av_assert0 (int) ;

int ff_frame_pool_get_video_config(FFFramePool *pool,
                                   int *width,
                                   int *height,
                                   enum AVPixelFormat *format,
                                   int *align)
{
    if (!pool)
        return AVERROR(EINVAL);

    av_assert0(pool->type == AVMEDIA_TYPE_VIDEO);

    *width = pool->width;
    *height = pool->height;
    *format = pool->format;
    *align = pool->align;

    return 0;
}
