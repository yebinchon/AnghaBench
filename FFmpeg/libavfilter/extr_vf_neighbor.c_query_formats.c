
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
        136, 150, 152,
        128, 129,
        140, 158, 144, 164,
        130, 131,
        132, 165, 166,
        159, 153, 145,
        163, 157, 149,
        162, 156, 148, 151,
        161, 155, 147,
        160, 154, 146,
        141, 137, 133,
        143, 139, 135,
        142, 138, 134,
        179, 174, 178,
        177, 176, 175,
        183, 182, 181, 180,
        169, 168, 173, 172, 171, 170,
        167
    };

    return ff_set_common_formats(ctx, ff_make_format_list(pix_fmts));
}
