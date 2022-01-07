
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {scalar_t__ mode; } ;
typedef TYPE_1__ EdgeDetectContext ;
typedef int AVFilterFormats ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;






 int ENOMEM ;
 scalar_t__ MODE_CANNY ;
 scalar_t__ MODE_COLORMIX ;
 scalar_t__ MODE_WIRES ;
 int av_assert0 (int ) ;
 int * ff_make_format_list (int const*) ;
 int ff_set_common_formats (TYPE_2__*,int *) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    const EdgeDetectContext *edgedetect = ctx->priv;
    static const enum AVPixelFormat wires_pix_fmts[] = {132, 131};
    static const enum AVPixelFormat canny_pix_fmts[] = {130, 129, 128, 133, 132, 131};
    static const enum AVPixelFormat colormix_pix_fmts[] = {133, 132, 131};
    AVFilterFormats *fmts_list;
    const enum AVPixelFormat *pix_fmts = ((void*)0);

    if (edgedetect->mode == MODE_WIRES) {
        pix_fmts = wires_pix_fmts;
    } else if (edgedetect->mode == MODE_COLORMIX) {
        pix_fmts = colormix_pix_fmts;
    } else if (edgedetect->mode == MODE_CANNY) {
        pix_fmts = canny_pix_fmts;
    } else {
        av_assert0(0);
    }
    fmts_list = ff_make_format_list(pix_fmts);
    if (!fmts_list)
        return AVERROR(ENOMEM);
    return ff_set_common_formats(ctx, fmts_list);
}
