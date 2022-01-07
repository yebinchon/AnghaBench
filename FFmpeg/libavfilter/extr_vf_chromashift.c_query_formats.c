
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_6__ {TYPE_1__* filter; } ;
struct TYPE_5__ {int name; } ;
typedef int AVFilterFormats ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int * ff_make_format_list (int const*) ;
 int ff_set_common_formats (TYPE_2__*,int *) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    static const enum AVPixelFormat yuv_pix_fmts[] = {
        135, 138, 141,
        128, 129, 130,131, 132,
        147, 150, 156, 162, 163, 164,
        157, 151, 142,
        161, 155, 146, 149,
        140, 137, 134,
        160, 154, 145, 148,
        144, 153, 159,
        158, 152, 143,
        139, 136, 133,
        165
    };
    static const enum AVPixelFormat rgb_pix_fmts[] = {
        171, 175, 166,
        170, 169,
        168, 167,
        174, 173, 172,
        165
    };
    const enum AVPixelFormat *pix_fmts;
    AVFilterFormats *fmts_list;

    if (!strcmp(ctx->filter->name, "rgbashift"))
        pix_fmts = rgb_pix_fmts;
    else
        pix_fmts = yuv_pix_fmts;

    fmts_list = ff_make_format_list(pix_fmts);
    if (!fmts_list)
        return AVERROR(ENOMEM);
    return ff_set_common_formats(ctx, fmts_list);
}
