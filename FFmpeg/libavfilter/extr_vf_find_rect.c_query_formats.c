
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
        129,
        128,
        130
    };

    return ff_set_common_formats(ctx, ff_make_format_list(pix_fmts));
}
