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
#define  AV_PIX_FMT_NONE 130 
#define  AV_PIX_FMT_PAL8 129 
#define  AV_PIX_FMT_RGB32 128 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__**) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (int const*) ; 

__attribute__((used)) static int FUNC4(AVFilterContext *ctx)
{
    static const enum AVPixelFormat in_fmts[]  = {AV_PIX_FMT_PAL8,  AV_PIX_FMT_NONE};
    static const enum AVPixelFormat out_fmts[] = {AV_PIX_FMT_RGB32, AV_PIX_FMT_NONE};
    int ret;
    AVFilterFormats *in  = FUNC3(in_fmts);
    AVFilterFormats *out = FUNC3(out_fmts);
    if (!in || !out) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    if ((ret = FUNC2(in , &ctx->inputs[0]->out_formats)) < 0 ||
        (ret = FUNC2(out, &ctx->outputs[0]->in_formats)) < 0)
        goto fail;
    return 0;
fail:
    if (in)
        FUNC1(&in->formats);
    FUNC1(&in);
    if (out)
        FUNC1(&out->formats);
    FUNC1(&out);
    return ret;
}