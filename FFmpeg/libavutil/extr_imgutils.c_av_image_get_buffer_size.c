
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ AVPixFmtDescriptor ;


 int AVERROR (int ) ;
 int EINVAL ;
 int FFALIGN (int,int) ;
 int FF_PSEUDOPAL ;
 int av_image_check_size (int,int,int ,int *) ;
 int av_image_fill_arrays (int **,int*,int *,int,int,int,int) ;
 TYPE_1__* av_pix_fmt_desc_get (int) ;

int av_image_get_buffer_size(enum AVPixelFormat pix_fmt,
                             int width, int height, int align)
{
    uint8_t *data[4];
    int linesize[4];
    int ret;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(pix_fmt);
    if (!desc)
        return AVERROR(EINVAL);

    ret = av_image_check_size(width, height, 0, ((void*)0));
    if (ret < 0)
        return ret;


    if (desc->flags & FF_PSEUDOPAL)
        return FFALIGN(width, align) * height;

    return av_image_fill_arrays(data, linesize, ((void*)0), pix_fmt,
                                width, height, align);
}
