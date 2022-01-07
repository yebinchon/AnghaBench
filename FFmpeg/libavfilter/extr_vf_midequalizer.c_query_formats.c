
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
        135, 146, 147,
        128, 129,
        138, 152, 141, 157,
        130, 131,
        132, 158, 159,
        170, 173,
        162, 161, 165, 164, 163,
        153, 148, 142,
        156, 151, 145,
        155, 150, 144,
        154, 149, 143,
        166, 169, 168, 167,
        139, 136, 133,
        140, 137, 134,
        172, 171,
        160
    };

    return ff_set_common_formats(ctx, ff_make_format_list(pix_fmts));
}
