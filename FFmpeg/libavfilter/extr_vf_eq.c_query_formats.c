
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

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    static const enum AVPixelFormat pixel_fmts_eq[] = {
        134,
        132,
        131,
        130,
        129,
        128,
        133
    };
    AVFilterFormats *fmts_list = ff_make_format_list(pixel_fmts_eq);
    if (!fmts_list)
        return AVERROR(ENOMEM);
    return ff_set_common_formats(ctx, fmts_list);
}
