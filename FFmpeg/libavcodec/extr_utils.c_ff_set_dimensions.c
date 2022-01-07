
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int coded_width; int coded_height; int lowres; void* height; void* width; int max_pixels; } ;
typedef TYPE_1__ AVCodecContext ;


 void* AV_CEIL_RSHIFT (int,int ) ;
 int AV_PIX_FMT_NONE ;
 int av_image_check_size2 (int,int,int ,int ,int ,TYPE_1__*) ;

int ff_set_dimensions(AVCodecContext *s, int width, int height)
{
    int ret = av_image_check_size2(width, height, s->max_pixels, AV_PIX_FMT_NONE, 0, s);

    if (ret < 0)
        width = height = 0;

    s->coded_width = width;
    s->coded_height = height;
    s->width = AV_CEIL_RSHIFT(width, s->lowres);
    s->height = AV_CEIL_RSHIFT(height, s->lowres);

    return ret;
}
