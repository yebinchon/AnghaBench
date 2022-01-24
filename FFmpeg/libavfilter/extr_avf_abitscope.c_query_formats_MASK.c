#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_5__ {TYPE_1__** outputs; TYPE_1__** inputs; } ;
struct TYPE_4__ {int /*<<< orphan*/  in_formats; int /*<<< orphan*/  out_samplerates; int /*<<< orphan*/  out_channel_layouts; int /*<<< orphan*/  out_formats; } ;
typedef  TYPE_1__ AVFilterLink ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_2__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  AV_PIX_FMT_NONE 132 
#define  AV_PIX_FMT_RGBA 131 
#define  AV_SAMPLE_FMT_NONE 130 
#define  AV_SAMPLE_FMT_S16P 129 
#define  AV_SAMPLE_FMT_S32P 128 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int const*) ; 

__attribute__((used)) static int FUNC6(AVFilterContext *ctx)
{
    AVFilterFormats *formats = NULL;
    AVFilterChannelLayouts *layouts;
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    static const enum AVSampleFormat sample_fmts[] = { AV_SAMPLE_FMT_S16P, AV_SAMPLE_FMT_S32P, AV_SAMPLE_FMT_NONE };
    static const enum AVPixelFormat pix_fmts[] = { AV_PIX_FMT_RGBA, AV_PIX_FMT_NONE };
    int ret;

    formats = FUNC5(sample_fmts);
    if ((ret = FUNC4(formats, &inlink->out_formats)) < 0)
        return ret;

    layouts = FUNC1();
    if (!layouts)
        return FUNC0(ENOMEM);
    if ((ret = FUNC3(layouts, &inlink->out_channel_layouts)) < 0)
        return ret;

    formats = FUNC2();
    if ((ret = FUNC4(formats, &inlink->out_samplerates)) < 0)
        return ret;

    formats = FUNC5(pix_fmts);
    if ((ret = FUNC4(formats, &outlink->in_formats)) < 0)
        return ret;

    return 0;
}