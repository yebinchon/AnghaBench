
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
        142,
        138, 137,
        136, 135,
        134, 133,
        132, 131,
        130, 128,
        129,
        140, 139,
        141
    };

    return ff_set_common_formats(ctx, ff_make_format_list(pix_fmts));
}
