
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
        136, 148, 149,
        128, 129,
        140, 153, 144, 157,
        130, 131,
        132, 158, 159,
        154, 150, 145,
        156, 152, 147,
        155, 151, 146,
        141, 137, 133,
        143, 139, 135,
        142, 138, 134,
        172, 167, 171,
        170, 169, 168,
        176, 175, 174 , 173,
        162, 161, 166,
        165, 164, 163,
        160
    };

    return ff_set_common_formats(ctx, ff_make_format_list(pix_fmts));
}
