
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
        167, 129, 173,
        195, 161, 152,
        169, 168, 179,
        133, 132, 130,
        171, 176, 174, 196,
        172, 197, 194, 180,
        155, 131, 146,
        163, 157, 148,
        170, 162, 166,
        160, 147, 151,
        156, 189, 184,
        188, 185, 142,
        138, 143, 139,
        135, 145, 141,
        137, 144, 140,
        136, 175, 128,
        193, 190, 165,
        164, 159, 158,
        150, 149, 187,
        186, 134, 154,
        153, 191, 192,
        182, 183, 178,
        181,
        177
    };

    AVFilterFormats *fmts_list = ff_make_format_list(pix_fmts);
    if (!fmts_list)
        return AVERROR(ENOMEM);
    return ff_set_common_formats(ctx, fmts_list);
}
