
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_5__ {TYPE_1__* comp; } ;
struct TYPE_4__ {int depth; } ;
typedef TYPE_2__ AVPixFmtDescriptor ;
typedef int AVFormatContext ;


 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*,int) ;
 TYPE_2__* av_pix_fmt_desc_get (int) ;

__attribute__((used)) static int get_bit_depth(AVFormatContext *s, enum AVPixelFormat pixel_format)
{
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(pixel_format);
    if (desc == ((void*)0)) {
        av_log(s, AV_LOG_ERROR, "Unsupported pixel format (%d)\n",
               pixel_format);
        return -1;
    }
    return desc->comp[0].depth;
}
