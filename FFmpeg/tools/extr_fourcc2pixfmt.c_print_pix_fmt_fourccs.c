
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_3__ {scalar_t__ pix_fmt; int fourcc; } ;
typedef TYPE_1__ PixelFormatTag ;


 scalar_t__ AV_PIX_FMT_NONE ;
 char* av_fourcc2str (int ) ;
 int printf (char*,char*,char) ;

__attribute__((used)) static void print_pix_fmt_fourccs(enum AVPixelFormat pix_fmt, const PixelFormatTag *pix_fmt_tags, char sep)
{
    int i;

    for (i = 0; pix_fmt_tags[i].pix_fmt != AV_PIX_FMT_NONE; i++)
        if (pix_fmt_tags[i].pix_fmt == pix_fmt)
            printf("%s%c", av_fourcc2str(pix_fmt_tags[i].fourcc), sep);
}
