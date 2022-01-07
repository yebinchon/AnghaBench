
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {scalar_t__ is_yuv; scalar_t__ is_rgb; } ;
typedef TYPE_1__ LutContext ;
typedef int AVFilterFormats ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int* all_pix_fmts ;
 int * ff_make_format_list (int const*) ;
 int ff_set_common_formats (TYPE_2__*,int *) ;
 int* rgb_pix_fmts ;
 int* yuv_pix_fmts ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    LutContext *s = ctx->priv;

    const enum AVPixelFormat *pix_fmts = s->is_rgb ? rgb_pix_fmts :
                                                     s->is_yuv ? yuv_pix_fmts :
                                                                 all_pix_fmts;
    AVFilterFormats *fmts_list = ff_make_format_list(pix_fmts);
    if (!fmts_list)
        return AVERROR(ENOMEM);
    return ff_set_common_formats(ctx, fmts_list);
}
