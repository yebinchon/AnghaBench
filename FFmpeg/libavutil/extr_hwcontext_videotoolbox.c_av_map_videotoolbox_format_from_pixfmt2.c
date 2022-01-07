
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_3__ {int pix_fmt; int full_range; int cv_fmt; } ;


 int FF_ARRAY_ELEMS (TYPE_1__*) ;
 TYPE_1__* cv_pix_fmts ;

uint32_t av_map_videotoolbox_format_from_pixfmt2(enum AVPixelFormat pix_fmt, bool full_range)
{
    int i;
    for (i = 0; i < FF_ARRAY_ELEMS(cv_pix_fmts); i++) {
        if (cv_pix_fmts[i].pix_fmt == pix_fmt && cv_pix_fmts[i].full_range == full_range)
            return cv_pix_fmts[i].cv_fmt;
    }
    return 0;
}
