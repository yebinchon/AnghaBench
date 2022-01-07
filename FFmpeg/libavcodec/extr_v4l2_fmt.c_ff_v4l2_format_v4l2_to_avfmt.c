
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_3__ {int avcodec; scalar_t__ v4l2_fmt; int avfmt; } ;


 int AV_PIX_FMT_NONE ;
 int FF_ARRAY_ELEMS (TYPE_1__*) ;
 TYPE_1__* fmt_map ;

enum AVPixelFormat ff_v4l2_format_v4l2_to_avfmt(uint32_t v4l2_fmt, enum AVCodecID avcodec)
{
    int i;
    for (i = 0; i < FF_ARRAY_ELEMS(fmt_map); i++) {
        if (fmt_map[i].avcodec == avcodec &&
            fmt_map[i].v4l2_fmt == v4l2_fmt)
            return fmt_map[i].avfmt;
    }
    return AV_PIX_FMT_NONE;
}
