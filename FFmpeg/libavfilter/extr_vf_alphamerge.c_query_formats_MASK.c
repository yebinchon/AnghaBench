#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_12__ {TYPE_2__** outputs; TYPE_1__** inputs; } ;
struct TYPE_11__ {struct TYPE_11__* formats; } ;
struct TYPE_10__ {int /*<<< orphan*/  in_formats; } ;
struct TYPE_9__ {int /*<<< orphan*/  out_formats; } ;
typedef  TYPE_3__ AVFilterFormats ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  AV_PIX_FMT_ABGR 137 
#define  AV_PIX_FMT_ARGB 136 
#define  AV_PIX_FMT_BGRA 135 
#define  AV_PIX_FMT_GBRAP 134 
#define  AV_PIX_FMT_GRAY8 133 
#define  AV_PIX_FMT_NONE 132 
#define  AV_PIX_FMT_RGBA 131 
#define  AV_PIX_FMT_YUVA420P 130 
#define  AV_PIX_FMT_YUVA422P 129 
#define  AV_PIX_FMT_YUVA444P 128 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__**) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (int const*) ; 

__attribute__((used)) static int FUNC4(AVFilterContext *ctx)
{
    static const enum AVPixelFormat main_fmts[] = {
        AV_PIX_FMT_YUVA444P, AV_PIX_FMT_YUVA422P, AV_PIX_FMT_YUVA420P,
        AV_PIX_FMT_GBRAP,
        AV_PIX_FMT_RGBA, AV_PIX_FMT_BGRA, AV_PIX_FMT_ARGB, AV_PIX_FMT_ABGR,
        AV_PIX_FMT_NONE
    };
    static const enum AVPixelFormat alpha_fmts[] = { AV_PIX_FMT_GRAY8, AV_PIX_FMT_NONE };
    AVFilterFormats *main_formats = NULL, *alpha_formats = NULL;
    int ret;

    if (!(main_formats = FUNC3(main_fmts)) ||
        !(alpha_formats = FUNC3(alpha_fmts))) {
            ret = FUNC0(ENOMEM);
            goto fail;
        }
    if ((ret = FUNC2(main_formats , &ctx->inputs[0]->out_formats)) < 0 ||
        (ret = FUNC2(alpha_formats, &ctx->inputs[1]->out_formats)) < 0 ||
        (ret = FUNC2(main_formats , &ctx->outputs[0]->in_formats)) < 0)
            goto fail;
    return 0;
fail:
    if (main_formats)
        FUNC1(&main_formats->formats);
    FUNC1(&main_formats);
    if (alpha_formats)
        FUNC1(&alpha_formats->formats);
    FUNC1(&alpha_formats);
    return ret;
}