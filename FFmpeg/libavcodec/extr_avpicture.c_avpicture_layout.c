
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_3__ {int linesize; scalar_t__ data; } ;
typedef TYPE_1__ AVPicture ;


 int av_image_copy_to_buffer (unsigned char*,int,int const* const*,int ,int,int,int,int) ;

int avpicture_layout(const AVPicture* src, enum AVPixelFormat pix_fmt, int width, int height,
                     unsigned char *dest, int dest_size)
{
    return av_image_copy_to_buffer(dest, dest_size,
                                   (const uint8_t * const*)src->data, src->linesize,
                                   pix_fmt, width, height, 1);
}
