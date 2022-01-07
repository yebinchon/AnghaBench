
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_3__ {int avfmt; int v4l2_fmt; } ;


 int FF_ARRAY_ELEMS (TYPE_1__*) ;
 TYPE_1__* fmt_map ;

uint32_t ff_v4l2_format_avfmt_to_v4l2(enum AVPixelFormat avfmt)
{
    int i;
    for (i = 0; i < FF_ARRAY_ELEMS(fmt_map); i++) {
        if (fmt_map[i].avfmt == avfmt)
            return fmt_map[i].v4l2_fmt;
    }
    return 0;
}
