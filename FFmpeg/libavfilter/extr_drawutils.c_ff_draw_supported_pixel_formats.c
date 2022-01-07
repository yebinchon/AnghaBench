
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef int FFDrawContext ;
typedef int AVFilterFormats ;


 scalar_t__ av_pix_fmt_desc_get (int) ;
 int ff_add_format (int **,int) ;
 scalar_t__ ff_draw_init (int *,int,unsigned int) ;

AVFilterFormats *ff_draw_supported_pixel_formats(unsigned flags)
{
    enum AVPixelFormat i;
    FFDrawContext draw;
    AVFilterFormats *fmts = ((void*)0);
    int ret;

    for (i = 0; av_pix_fmt_desc_get(i); i++)
        if (ff_draw_init(&draw, i, flags) >= 0 &&
            (ret = ff_add_format(&fmts, i)) < 0)
            return ((void*)0);
    return fmts;
}
