
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_16__ {TYPE_2__** outputs; TYPE_1__** inputs; TYPE_3__* priv; } ;
struct TYPE_15__ {struct TYPE_15__* formats; } ;
struct TYPE_14__ {int format; } ;
struct TYPE_13__ {int in_formats; } ;
struct TYPE_12__ {int out_formats; } ;
typedef TYPE_3__ OverlayContext ;
typedef TYPE_4__ AVFilterFormats ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 size_t MAIN ;
 size_t OVERLAY ;






 int const* alpha_pix_fmts ;
 int av_assert0 (int ) ;
 int av_freep (TYPE_4__**) ;
 int ff_formats_ref (TYPE_4__*,int *) ;
 TYPE_4__* ff_make_format_list (int const*) ;
 int ff_set_common_formats (TYPE_5__*,TYPE_4__*) ;

__attribute__((used)) static int query_formats(AVFilterContext *ctx)
{
    OverlayContext *s = ctx->priv;


    static const enum AVPixelFormat main_pix_fmts_yuv420[] = {
        142, 136, 139,
        146, 145,
        147
    };
    static const enum AVPixelFormat overlay_pix_fmts_yuv420[] = {
        139, 147
    };

    static const enum AVPixelFormat main_pix_fmts_yuv422[] = {
        141, 135, 138, 147
    };
    static const enum AVPixelFormat overlay_pix_fmts_yuv422[] = {
        138, 147
    };

    static const enum AVPixelFormat main_pix_fmts_yuv444[] = {
        140, 134, 137, 147
    };
    static const enum AVPixelFormat overlay_pix_fmts_yuv444[] = {
        137, 147
    };

    static const enum AVPixelFormat main_pix_fmts_gbrp[] = {
        148, 149, 147
    };
    static const enum AVPixelFormat overlay_pix_fmts_gbrp[] = {
        149, 147
    };

    static const enum AVPixelFormat main_pix_fmts_rgb[] = {
        152, 143,
        153, 150,
        144, 151,
        147
    };
    static const enum AVPixelFormat overlay_pix_fmts_rgb[] = {
        152, 143,
        153, 150,
        147
    };

    AVFilterFormats *main_formats = ((void*)0);
    AVFilterFormats *overlay_formats = ((void*)0);
    int ret;

    switch (s->format) {
    case 130:
        if (!(main_formats = ff_make_format_list(main_pix_fmts_yuv420)) ||
            !(overlay_formats = ff_make_format_list(overlay_pix_fmts_yuv420))) {
                ret = AVERROR(ENOMEM);
                goto fail;
            }
        break;
    case 129:
        if (!(main_formats = ff_make_format_list(main_pix_fmts_yuv422)) ||
            !(overlay_formats = ff_make_format_list(overlay_pix_fmts_yuv422))) {
                ret = AVERROR(ENOMEM);
                goto fail;
            }
        break;
    case 128:
        if (!(main_formats = ff_make_format_list(main_pix_fmts_yuv444)) ||
            !(overlay_formats = ff_make_format_list(overlay_pix_fmts_yuv444))) {
                ret = AVERROR(ENOMEM);
                goto fail;
            }
        break;
    case 131:
        if (!(main_formats = ff_make_format_list(main_pix_fmts_rgb)) ||
            !(overlay_formats = ff_make_format_list(overlay_pix_fmts_rgb))) {
                ret = AVERROR(ENOMEM);
                goto fail;
            }
        break;
    case 132:
        if (!(main_formats = ff_make_format_list(main_pix_fmts_gbrp)) ||
            !(overlay_formats = ff_make_format_list(overlay_pix_fmts_gbrp))) {
                ret = AVERROR(ENOMEM);
                goto fail;
            }
        break;
    case 133:
        if (!(main_formats = ff_make_format_list(alpha_pix_fmts))) {
                ret = AVERROR(ENOMEM);
                goto fail;
            }
        break;
    default:
        av_assert0(0);
    }

    if (s->format == 133) {
        ret = ff_set_common_formats(ctx, main_formats);
        if (ret < 0)
            goto fail;
    } else {
        if ((ret = ff_formats_ref(main_formats , &ctx->inputs[MAIN]->out_formats )) < 0 ||
            (ret = ff_formats_ref(overlay_formats, &ctx->inputs[OVERLAY]->out_formats)) < 0 ||
            (ret = ff_formats_ref(main_formats , &ctx->outputs[MAIN]->in_formats )) < 0)
                goto fail;
    }

    return 0;
fail:
    if (main_formats)
        av_freep(&main_formats->formats);
    av_freep(&main_formats);
    if (overlay_formats)
        av_freep(&overlay_formats->formats);
    av_freep(&overlay_formats);
    return ret;
}
