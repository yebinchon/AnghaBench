
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {scalar_t__ is_rgb; } ;
typedef TYPE_1__ GEQContext ;
typedef int AVFilterFormats ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int * ff_make_format_list (int const*) ;
 int ff_set_common_formats (TYPE_2__*,int *) ;

__attribute__((used)) static int geq_query_formats(AVFilterContext *ctx)
{
    GEQContext *geq = ctx->priv;
    static const enum AVPixelFormat yuv_pix_fmts[] = {
        145, 153, 159,
        160, 161, 147,
        131, 135, 139,
        164,
        140, 148, 154,
        128, 132, 136,
        144, 152, 158,
        146,
        130, 134, 138,
        163, 168,
        143, 151, 157,
        167, 166,
        142, 150, 156,
        141, 149, 155,
        129, 133, 137,
        165,
        162
    };
    static const enum AVPixelFormat rgb_pix_fmts[] = {
        174, 178,
        169,
        173, 177,
        172, 176,
        171,
        170, 175,
        162
    };
    AVFilterFormats *fmts_list;

    if (geq->is_rgb) {
        fmts_list = ff_make_format_list(rgb_pix_fmts);
    } else
        fmts_list = ff_make_format_list(yuv_pix_fmts);
    if (!fmts_list)
        return AVERROR(ENOMEM);
    return ff_set_common_formats(ctx, fmts_list);
}
