
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
        149, 130,
        143, 129,
        136, 128,
        150, 157,
        137, 151,
        144 , 138 , 131,
        148, 142, 135,
        147, 141, 134,
        146, 140, 133,
        145, 139, 132,
        155, 154,
        153, 159,
        152, 158,
        156
    };

    AVFilterFormats *fmts_list = ff_make_format_list(pix_fmts);
    if (!fmts_list)
        return AVERROR(ENOMEM);
    return ff_set_common_formats(ctx, fmts_list);
}
