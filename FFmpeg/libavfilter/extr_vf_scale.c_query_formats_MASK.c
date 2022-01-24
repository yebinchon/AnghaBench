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
typedef  int /*<<< orphan*/  AVPixFmtDescriptor ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int AV_PIX_FMT_PAL8 ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/ **,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(AVFilterContext *ctx)
{
    AVFilterFormats *formats;
    enum AVPixelFormat pix_fmt;
    int ret;

    if (ctx->inputs[0]) {
        const AVPixFmtDescriptor *desc = NULL;
        formats = NULL;
        while ((desc = FUNC1(desc))) {
            pix_fmt = FUNC0(desc);
            if ((FUNC5(pix_fmt) ||
                 FUNC4(pix_fmt))
                && (ret = FUNC2(&formats, pix_fmt)) < 0) {
                return ret;
            }
        }
        if ((ret = FUNC3(formats, &ctx->inputs[0]->out_formats)) < 0)
            return ret;
    }
    if (ctx->outputs[0]) {
        const AVPixFmtDescriptor *desc = NULL;
        formats = NULL;
        while ((desc = FUNC1(desc))) {
            pix_fmt = FUNC0(desc);
            if ((FUNC6(pix_fmt) || pix_fmt == AV_PIX_FMT_PAL8 ||
                 FUNC4(pix_fmt))
                && (ret = FUNC2(&formats, pix_fmt)) < 0) {
                return ret;
            }
        }
        if ((ret = FUNC3(formats, &ctx->outputs[0]->in_formats)) < 0)
            return ret;
    }

    return 0;
}