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
struct TYPE_5__ {TYPE_1__** outputs; TYPE_1__** inputs; } ;
struct TYPE_4__ {int /*<<< orphan*/  in_channel_layouts; int /*<<< orphan*/  out_channel_layouts; int /*<<< orphan*/  in_samplerates; int /*<<< orphan*/  out_samplerates; int /*<<< orphan*/  in_formats; int /*<<< orphan*/  out_formats; } ;
typedef  TYPE_1__ AVFilterLink ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_2__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(AVFilterContext *ctx)
{
    AVFilterLink *inlink  = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    AVFilterFormats *in_formats, *out_formats, *in_samplerates, *out_samplerates;
    AVFilterChannelLayouts *in_layouts, *out_layouts;
    int ret;

    if (!(in_formats      = FUNC2         (AVMEDIA_TYPE_AUDIO)) ||
        !(out_formats     = FUNC2         (AVMEDIA_TYPE_AUDIO)) ||
        !(in_samplerates  = FUNC3     (                  )) ||
        !(out_samplerates = FUNC3     (                  )) ||
        !(in_layouts      = FUNC1 (                  )) ||
        !(out_layouts     = FUNC1 (                  )))
        return FUNC0(ENOMEM);

    if ((ret = FUNC5         (in_formats,      &inlink->out_formats        )) < 0 ||
        (ret = FUNC5         (out_formats,     &outlink->in_formats        )) < 0 ||
        (ret = FUNC5         (in_samplerates,  &inlink->out_samplerates    )) < 0 ||
        (ret = FUNC5         (out_samplerates, &outlink->in_samplerates    )) < 0 ||
        (ret = FUNC4 (in_layouts,      &inlink->out_channel_layouts)) < 0 ||
        (ret = FUNC4 (out_layouts,     &outlink->in_channel_layouts)) < 0)
        return ret;

    return 0;
}