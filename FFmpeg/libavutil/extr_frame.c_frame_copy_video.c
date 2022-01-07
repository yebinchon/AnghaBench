
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int src_data ;
struct TYPE_4__ {int height; int width; int format; int linesize; int * data; } ;
typedef TYPE_1__ AVFrame ;


 int AVERROR (int ) ;
 int EINVAL ;
 int av_image_copy (int *,int ,int const**,int ,int ,int ,int ) ;
 int av_pix_fmt_count_planes (int ) ;
 int memcpy (int const**,int *,int) ;

__attribute__((used)) static int frame_copy_video(AVFrame *dst, const AVFrame *src)
{
    const uint8_t *src_data[4];
    int i, planes;

    if (dst->width < src->width ||
        dst->height < src->height)
        return AVERROR(EINVAL);

    planes = av_pix_fmt_count_planes(dst->format);
    for (i = 0; i < planes; i++)
        if (!dst->data[i] || !src->data[i])
            return AVERROR(EINVAL);

    memcpy(src_data, src->data, sizeof(src_data));
    av_image_copy(dst->data, dst->linesize,
                  src_data, src->linesize,
                  dst->format, src->width, src->height);

    return 0;
}
