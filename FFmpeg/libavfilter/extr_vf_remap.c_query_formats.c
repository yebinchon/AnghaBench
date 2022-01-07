
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_14__ {TYPE_2__** outputs; TYPE_1__** inputs; TYPE_3__* priv; } ;
struct TYPE_13__ {struct TYPE_13__* formats; } ;
struct TYPE_12__ {scalar_t__ format; } ;
struct TYPE_11__ {int in_formats; } ;
struct TYPE_10__ {int out_formats; } ;
typedef TYPE_3__ RemapContext ;
typedef TYPE_4__ AVFilterFormats ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_freep (TYPE_4__**) ;
 int ff_formats_ref (TYPE_4__*,int *) ;
 TYPE_4__* ff_make_format_list (int const*) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    RemapContext *s = ctx->priv;
    static const enum AVPixelFormat pix_fmts[] = {
        132,
        138,
        128,
        142, 163,
        164, 165, 140, 161,
        155, 159,
        133, 137, 136,
        135, 134,
        129, 131, 130,
        150, 154, 153,
        152, 151,
        158, 157, 156,
        141, 162,
        139, 160,
        143
    };
    static const enum AVPixelFormat gray_pix_fmts[] = {
        145, 144,
        149, 148,
        147, 146,
        143
    };
    static const enum AVPixelFormat map_fmts[] = {
        146,
        143
    };
    AVFilterFormats *pix_formats = ((void*)0), *map_formats = ((void*)0);
    int ret;

    if (!(pix_formats = ff_make_format_list(s->format ? gray_pix_fmts : pix_fmts)) ||
        !(map_formats = ff_make_format_list(map_fmts))) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }
    if ((ret = ff_formats_ref(pix_formats, &ctx->inputs[0]->out_formats)) < 0 ||
        (ret = ff_formats_ref(map_formats, &ctx->inputs[1]->out_formats)) < 0 ||
        (ret = ff_formats_ref(map_formats, &ctx->inputs[2]->out_formats)) < 0 ||
        (ret = ff_formats_ref(pix_formats, &ctx->outputs[0]->in_formats)) < 0)
        goto fail;
    return 0;
fail:
    if (pix_formats)
        av_freep(&pix_formats->formats);
    av_freep(&pix_formats);
    if (map_formats)
        av_freep(&map_formats->formats);
    av_freep(&map_formats);
    return ret;
}
