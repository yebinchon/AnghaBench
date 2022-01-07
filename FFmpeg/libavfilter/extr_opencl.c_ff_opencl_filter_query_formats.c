
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef int AVFilterFormats ;
typedef int AVFilterContext ;


 int AVERROR (int ) ;


 int ENOMEM ;
 int * ff_make_format_list (int const*) ;
 int ff_set_common_formats (int *,int *) ;

int ff_opencl_filter_query_formats(AVFilterContext *avctx)
{
    const static enum AVPixelFormat pix_fmts[] = {
        128,
        129,
    };
    AVFilterFormats *formats;

    formats = ff_make_format_list(pix_fmts);
    if (!formats)
        return AVERROR(ENOMEM);

    return ff_set_common_formats(avctx, formats);
}
