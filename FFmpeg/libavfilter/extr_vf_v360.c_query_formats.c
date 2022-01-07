
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

        137, 133,
        136, 135,
        134,


        142, 138,
        141, 140,
        139,


        146, 143,
        145, 144,


        128, 129,
        130, 131,
        132,


        152, 147,
        151, 150,
        149, 148,


        155, 154,
        153,


        161, 156,
        160, 159,
        158, 157,


        167, 162,
        166, 165,
        164, 163,


        168,


        169,


        182, 177,
        181, 180,
        179, 178,


        186, 185,
        184, 183,


        172, 171,
        176, 175,
        174, 173,

        170
    };

    AVFilterFormats *fmts_list = ff_make_format_list(pix_fmts);
    if (!fmts_list)
        return AVERROR(ENOMEM);
    return ff_set_common_formats(ctx, fmts_list);
}
