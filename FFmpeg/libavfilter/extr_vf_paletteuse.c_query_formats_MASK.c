#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_7__ {TYPE_2__** outputs; TYPE_1__** inputs; } ;
struct TYPE_6__ {int /*<<< orphan*/  in_formats; } ;
struct TYPE_5__ {int /*<<< orphan*/  out_formats; } ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  AV_PIX_FMT_NONE 130 
#define  AV_PIX_FMT_PAL8 129 
#define  AV_PIX_FMT_RGB32 128 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int const*) ; 

__attribute__((used)) static int FUNC4(AVFilterContext *ctx)
{
    static const enum AVPixelFormat in_fmts[]    = {AV_PIX_FMT_RGB32, AV_PIX_FMT_NONE};
    static const enum AVPixelFormat inpal_fmts[] = {AV_PIX_FMT_RGB32, AV_PIX_FMT_NONE};
    static const enum AVPixelFormat out_fmts[]   = {AV_PIX_FMT_PAL8,  AV_PIX_FMT_NONE};
    int ret;
    AVFilterFormats *in    = FUNC3(in_fmts);
    AVFilterFormats *inpal = FUNC3(inpal_fmts);
    AVFilterFormats *out   = FUNC3(out_fmts);
    if (!in || !inpal || !out) {
        FUNC1(&in);
        FUNC1(&inpal);
        FUNC1(&out);
        return FUNC0(ENOMEM);
    }
    if ((ret = FUNC2(in   , &ctx->inputs[0]->out_formats)) < 0 ||
        (ret = FUNC2(inpal, &ctx->inputs[1]->out_formats)) < 0 ||
        (ret = FUNC2(out  , &ctx->outputs[0]->in_formats)) < 0)
        return ret;
    return 0;
}