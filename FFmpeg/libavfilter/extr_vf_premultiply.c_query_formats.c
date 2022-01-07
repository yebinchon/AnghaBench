
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {scalar_t__ inplace; } ;
typedef TYPE_1__ PreMultiplyContext ;
typedef TYPE_2__ AVFilterContext ;
 int ff_make_format_list (int const*) ;
 int ff_set_common_formats (TYPE_2__*,int ) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    PreMultiplyContext *s = ctx->priv;

    static const enum AVPixelFormat no_alpha_pix_fmts[] = {
        138, 128,
        133, 137,
        136, 135,
        134,
        151, 146, 150,
        149, 148, 147,
        141, 140, 145, 144, 143, 142,
        139
    };

    static const enum AVPixelFormat alpha_pix_fmts[] = {
        132,
        129, 131, 130,
        155,
        154, 153, 152,
        139
    };

    return ff_set_common_formats(ctx, ff_make_format_list(s->inplace ? alpha_pix_fmts : no_alpha_pix_fmts));
}
