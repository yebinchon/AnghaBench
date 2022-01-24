#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_16__ {TYPE_2__** outputs; TYPE_1__** inputs; TYPE_3__* priv; } ;
struct TYPE_15__ {struct TYPE_15__* formats; } ;
struct TYPE_14__ {int format; } ;
struct TYPE_13__ {int /*<<< orphan*/  in_formats; } ;
struct TYPE_12__ {int /*<<< orphan*/  out_formats; } ;
typedef  TYPE_3__ OverlayContext ;
typedef  TYPE_4__ AVFilterFormats ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  AV_PIX_FMT_ABGR 153 
#define  AV_PIX_FMT_ARGB 152 
#define  AV_PIX_FMT_BGR24 151 
#define  AV_PIX_FMT_BGRA 150 
#define  AV_PIX_FMT_GBRAP 149 
#define  AV_PIX_FMT_GBRP 148 
#define  AV_PIX_FMT_NONE 147 
#define  AV_PIX_FMT_NV12 146 
#define  AV_PIX_FMT_NV21 145 
#define  AV_PIX_FMT_RGB24 144 
#define  AV_PIX_FMT_RGBA 143 
#define  AV_PIX_FMT_YUV420P 142 
#define  AV_PIX_FMT_YUV422P 141 
#define  AV_PIX_FMT_YUV444P 140 
#define  AV_PIX_FMT_YUVA420P 139 
#define  AV_PIX_FMT_YUVA422P 138 
#define  AV_PIX_FMT_YUVA444P 137 
#define  AV_PIX_FMT_YUVJ420P 136 
#define  AV_PIX_FMT_YUVJ422P 135 
#define  AV_PIX_FMT_YUVJ444P 134 
 int /*<<< orphan*/  ENOMEM ; 
 size_t MAIN ; 
 size_t OVERLAY ; 
#define  OVERLAY_FORMAT_AUTO 133 
#define  OVERLAY_FORMAT_GBRP 132 
#define  OVERLAY_FORMAT_RGB 131 
#define  OVERLAY_FORMAT_YUV420 130 
#define  OVERLAY_FORMAT_YUV422 129 
#define  OVERLAY_FORMAT_YUV444 128 
 int const* alpha_pix_fmts ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__**) ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC4 (int const*) ; 
 int FUNC5 (TYPE_5__*,TYPE_4__*) ; 

__attribute__((used)) static int FUNC6(AVFilterContext *ctx)
{
    OverlayContext *s = ctx->priv;

    /* overlay formats contains alpha, for avoiding conversion with alpha information loss */
    static const enum AVPixelFormat main_pix_fmts_yuv420[] = {
        AV_PIX_FMT_YUV420P, AV_PIX_FMT_YUVJ420P, AV_PIX_FMT_YUVA420P,
        AV_PIX_FMT_NV12, AV_PIX_FMT_NV21,
        AV_PIX_FMT_NONE
    };
    static const enum AVPixelFormat overlay_pix_fmts_yuv420[] = {
        AV_PIX_FMT_YUVA420P, AV_PIX_FMT_NONE
    };

    static const enum AVPixelFormat main_pix_fmts_yuv422[] = {
        AV_PIX_FMT_YUV422P, AV_PIX_FMT_YUVJ422P, AV_PIX_FMT_YUVA422P, AV_PIX_FMT_NONE
    };
    static const enum AVPixelFormat overlay_pix_fmts_yuv422[] = {
        AV_PIX_FMT_YUVA422P, AV_PIX_FMT_NONE
    };

    static const enum AVPixelFormat main_pix_fmts_yuv444[] = {
        AV_PIX_FMT_YUV444P, AV_PIX_FMT_YUVJ444P, AV_PIX_FMT_YUVA444P, AV_PIX_FMT_NONE
    };
    static const enum AVPixelFormat overlay_pix_fmts_yuv444[] = {
        AV_PIX_FMT_YUVA444P, AV_PIX_FMT_NONE
    };

    static const enum AVPixelFormat main_pix_fmts_gbrp[] = {
        AV_PIX_FMT_GBRP, AV_PIX_FMT_GBRAP, AV_PIX_FMT_NONE
    };
    static const enum AVPixelFormat overlay_pix_fmts_gbrp[] = {
        AV_PIX_FMT_GBRAP, AV_PIX_FMT_NONE
    };

    static const enum AVPixelFormat main_pix_fmts_rgb[] = {
        AV_PIX_FMT_ARGB,  AV_PIX_FMT_RGBA,
        AV_PIX_FMT_ABGR,  AV_PIX_FMT_BGRA,
        AV_PIX_FMT_RGB24, AV_PIX_FMT_BGR24,
        AV_PIX_FMT_NONE
    };
    static const enum AVPixelFormat overlay_pix_fmts_rgb[] = {
        AV_PIX_FMT_ARGB,  AV_PIX_FMT_RGBA,
        AV_PIX_FMT_ABGR,  AV_PIX_FMT_BGRA,
        AV_PIX_FMT_NONE
    };

    AVFilterFormats *main_formats = NULL;
    AVFilterFormats *overlay_formats = NULL;
    int ret;

    switch (s->format) {
    case OVERLAY_FORMAT_YUV420:
        if (!(main_formats    = FUNC4(main_pix_fmts_yuv420)) ||
            !(overlay_formats = FUNC4(overlay_pix_fmts_yuv420))) {
                ret = FUNC0(ENOMEM);
                goto fail;
            }
        break;
    case OVERLAY_FORMAT_YUV422:
        if (!(main_formats    = FUNC4(main_pix_fmts_yuv422)) ||
            !(overlay_formats = FUNC4(overlay_pix_fmts_yuv422))) {
                ret = FUNC0(ENOMEM);
                goto fail;
            }
        break;
    case OVERLAY_FORMAT_YUV444:
        if (!(main_formats    = FUNC4(main_pix_fmts_yuv444)) ||
            !(overlay_formats = FUNC4(overlay_pix_fmts_yuv444))) {
                ret = FUNC0(ENOMEM);
                goto fail;
            }
        break;
    case OVERLAY_FORMAT_RGB:
        if (!(main_formats    = FUNC4(main_pix_fmts_rgb)) ||
            !(overlay_formats = FUNC4(overlay_pix_fmts_rgb))) {
                ret = FUNC0(ENOMEM);
                goto fail;
            }
        break;
    case OVERLAY_FORMAT_GBRP:
        if (!(main_formats    = FUNC4(main_pix_fmts_gbrp)) ||
            !(overlay_formats = FUNC4(overlay_pix_fmts_gbrp))) {
                ret = FUNC0(ENOMEM);
                goto fail;
            }
        break;
    case OVERLAY_FORMAT_AUTO:
        if (!(main_formats    = FUNC4(alpha_pix_fmts))) {
                ret = FUNC0(ENOMEM);
                goto fail;
            }
        break;
    default:
        FUNC1(0);
    }

    if (s->format == OVERLAY_FORMAT_AUTO) {
        ret = FUNC5(ctx, main_formats);
        if (ret < 0)
            goto fail;
    } else {
        if ((ret = FUNC3(main_formats   , &ctx->inputs[MAIN]->out_formats   )) < 0 ||
            (ret = FUNC3(overlay_formats, &ctx->inputs[OVERLAY]->out_formats)) < 0 ||
            (ret = FUNC3(main_formats   , &ctx->outputs[MAIN]->in_formats   )) < 0)
                goto fail;
    }

    return 0;
fail:
    if (main_formats)
        FUNC2(&main_formats->formats);
    FUNC2(&main_formats);
    if (overlay_formats)
        FUNC2(&overlay_formats->formats);
    FUNC2(&overlay_formats);
    return ret;
}