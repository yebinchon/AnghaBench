
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
    static const enum AVPixelFormat pix_fmts[] = {
        153,
        147,
        140,
        155,
        154,
        157,
        131,
        130,
        128,
        158,
        141,
        129,
        148,
        142,
        135,
        152,
        146,
        139,
        151,
        145,
        138,
        150,
        144,
        137,
        149,
        143,
        136,
        134,
        133,
        132,
        156
    };
    AVFilterFormats *fmts_list = ff_make_format_list(pix_fmts);
    if (!fmts_list)
        return AVERROR(ENOMEM);
    return ff_set_common_formats(ctx, fmts_list);
}
