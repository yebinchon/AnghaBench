
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
        136, 140, 144,
        128, 129, 130,131, 132,
        149, 152, 157, 162, 163, 164,
        174, 178, 166,
        158, 153, 145,
        141, 137, 133, 170,
        161, 156, 148, 151,
        143, 139, 135,
        173, 177, 169,
        160, 155, 147, 150,
        172, 176, 168,
        159, 154, 146,
        142, 138, 134,
        171, 175, 167,
        165
    };

    AVFilterFormats *fmts_list = ff_make_format_list(pix_fmts);
    if (!fmts_list)
        return AVERROR(ENOMEM);
    return ff_set_common_formats(ctx, fmts_list);
}
