
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
    static const enum AVPixelFormat pixel_fmts[] = {
        158,
        157,
        162,
        161,
        160,
        159,
        155, 154,
        153, 147,
        141, 138,
        131, 130,
        129, 128,
        132,
        148, 142, 133,
        152, 146, 137,
        140,
        136, 145, 151,
        139,
        135, 144, 150,
        149, 143, 134,
        168, 163, 167,
        166, 165, 164,
        156
    };
    AVFilterFormats *formats = ff_make_format_list(pixel_fmts);
    if (!formats)
        return AVERROR(ENOMEM);
    return ff_set_common_formats(ctx, formats);
}
