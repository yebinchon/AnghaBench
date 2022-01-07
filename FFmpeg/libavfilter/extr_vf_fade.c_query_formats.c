
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {scalar_t__ black_fade; scalar_t__ alpha; } ;
typedef TYPE_1__ FadeContext ;
typedef int AVFilterFormats ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int * ff_make_format_list (int const*) ;
 int ff_set_common_formats (TYPE_2__*,int *) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    const FadeContext *s = ctx->priv;
    static const enum AVPixelFormat pix_fmts[] = {
        135, 137, 138,
        139, 140,
        128, 130, 131,
        136, 129,
        134, 133, 132,
        142, 145,
        146, 147,
        141, 144,
        143
    };
    static const enum AVPixelFormat pix_fmts_rgb[] = {
        142, 145,
        146, 147,
        141, 144,
        143
    };
    static const enum AVPixelFormat pix_fmts_alpha[] = {
        134, 133, 132,
        146, 147,
        141, 144,
        143
    };
    static const enum AVPixelFormat pix_fmts_rgba[] = {
        146, 147,
        141, 144,
        143
    };
    AVFilterFormats *fmts_list;

    if (s->alpha) {
        if (s->black_fade)
            fmts_list = ff_make_format_list(pix_fmts_alpha);
        else
            fmts_list = ff_make_format_list(pix_fmts_rgba);
    } else {
        if (s->black_fade)
            fmts_list = ff_make_format_list(pix_fmts);
        else
            fmts_list = ff_make_format_list(pix_fmts_rgb);
    }
    if (!fmts_list)
        return AVERROR(ENOMEM);
    return ff_set_common_formats(ctx, fmts_list);
}
