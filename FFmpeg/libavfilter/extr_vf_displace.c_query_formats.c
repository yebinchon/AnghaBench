
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef int AVFilterContext ;
 int ff_make_format_list (int const*) ;
 int ff_set_common_formats (int *,int ) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    static const enum AVPixelFormat pix_fmts[] = {
        133, 136, 137,
        128, 129,
        134, 138, 135, 139,
        130, 131,
        132, 140, 141,
        143, 150,
        152, 153, 142, 149,
        154, 155, 144, 151,
        147, 148,
        146, 145
    };

    return ff_set_common_formats(ctx, ff_make_format_list(pix_fmts));
}
