
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
        165, 164, 163,
        157, 151, 150,
        132, 131,
        130, 129, 128,
        158, 152, 145,
        162, 156, 149,
        161, 155, 148,
        160, 154, 147,
        159, 153, 146,
        144, 140, 136,
        141, 137, 133,
        143, 139, 135,
        142, 138, 134,
        174, 169, 173,
        172, 171, 170,
        176, 175,
        167, 168,
        166
    };

    AVFilterFormats *fmts_list = ff_make_format_list(pix_fmts);
    if (!fmts_list)
        return AVERROR(ENOMEM);

    return ff_set_common_formats(ctx, fmts_list);
}
