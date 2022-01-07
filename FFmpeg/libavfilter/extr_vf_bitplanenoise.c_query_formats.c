
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
    static const enum AVPixelFormat pixfmts[] = {
        138, 147, 153, 154,
        141,
        130, 128, 131, 132,
        129,
        133, 142, 148,
        137, 146, 152,
        140,
        136, 145, 151,
        139,
        135, 144, 150,
        134, 143, 149,
        167, 162, 166,
        165, 164, 163,
        157, 156, 161, 160, 159, 158,
        155
    };

    AVFilterFormats *formats = ff_make_format_list(pixfmts);
    if (!formats)
        return AVERROR(ENOMEM);
    return ff_set_common_formats(ctx, formats);
}
