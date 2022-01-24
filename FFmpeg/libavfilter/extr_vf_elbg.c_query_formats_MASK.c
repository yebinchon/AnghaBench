#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_10__ {TYPE_2__** outputs; TYPE_1__** inputs; TYPE_3__* priv; } ;
struct TYPE_9__ {int /*<<< orphan*/  pal8; } ;
struct TYPE_8__ {int /*<<< orphan*/  in_formats; } ;
struct TYPE_7__ {int /*<<< orphan*/  out_formats; } ;
typedef  TYPE_3__ ELBGContext ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  AV_PIX_FMT_ABGR 135 
#define  AV_PIX_FMT_ARGB 134 
#define  AV_PIX_FMT_BGR24 133 
#define  AV_PIX_FMT_BGRA 132 
#define  AV_PIX_FMT_NONE 131 
#define  AV_PIX_FMT_PAL8 130 
#define  AV_PIX_FMT_RGB24 129 
#define  AV_PIX_FMT_RGBA 128 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int const*) ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(AVFilterContext *ctx)
{
    ELBGContext *elbg = ctx->priv;
    int ret;

    static const enum AVPixelFormat pix_fmts[] = {
        AV_PIX_FMT_ARGB, AV_PIX_FMT_RGBA, AV_PIX_FMT_ABGR, AV_PIX_FMT_BGRA,
        AV_PIX_FMT_RGB24, AV_PIX_FMT_BGR24,
        AV_PIX_FMT_NONE
    };
    if (!elbg->pal8) {
        AVFilterFormats *fmts_list = FUNC2(pix_fmts);
        if (!fmts_list)
            return FUNC0(ENOMEM);
        return FUNC3(ctx, fmts_list);
    } else {
        static const enum AVPixelFormat pal8_fmt[] = {
            AV_PIX_FMT_PAL8,
            AV_PIX_FMT_NONE
        };
        if ((ret = FUNC1(FUNC2(pix_fmts), &ctx->inputs[0]->out_formats)) < 0 ||
            (ret = FUNC1(FUNC2(pal8_fmt), &ctx->outputs[0]->in_formats)) < 0)
            return ret;
    }
    return 0;
}