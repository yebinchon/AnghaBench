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
typedef  scalar_t__ int64_t ;
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_7__ {int /*<<< orphan*/  swr; } ;
struct TYPE_6__ {TYPE_1__** outputs; TYPE_1__** inputs; TYPE_3__* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  in_channel_layouts; int /*<<< orphan*/  in_formats; int /*<<< orphan*/  in_samplerates; int /*<<< orphan*/  out_channel_layouts; int /*<<< orphan*/  out_samplerates; int /*<<< orphan*/  out_formats; } ;
typedef  TYPE_1__ AVFilterLink ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_2__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;
typedef  TYPE_3__ AResampleContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int AV_SAMPLE_FMT_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int*) ; 

__attribute__((used)) static int FUNC9(AVFilterContext *ctx)
{
    AResampleContext *aresample = ctx->priv;
    enum AVSampleFormat out_format;
    int64_t out_rate, out_layout;

    AVFilterLink *inlink  = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];

    AVFilterFormats        *in_formats, *out_formats;
    AVFilterFormats        *in_samplerates, *out_samplerates;
    AVFilterChannelLayouts *in_layouts, *out_layouts;
    int ret;

    FUNC1(aresample->swr, "osf", 0, &out_format);
    FUNC0(aresample->swr, "osr", 0, &out_rate);
    FUNC0(aresample->swr, "ocl", 0, &out_layout);

    in_formats      = FUNC4(AVMEDIA_TYPE_AUDIO);
    if ((ret = FUNC7(in_formats, &inlink->out_formats)) < 0)
        return ret;

    in_samplerates  = FUNC5();
    if ((ret = FUNC7(in_samplerates, &inlink->out_samplerates)) < 0)
        return ret;

    in_layouts      = FUNC3();
    if ((ret = FUNC6(in_layouts, &inlink->out_channel_layouts)) < 0)
        return ret;

    if(out_rate > 0) {
        int ratelist[] = { out_rate, -1 };
        out_samplerates = FUNC8(ratelist);
    } else {
        out_samplerates = FUNC5();
    }

    if ((ret = FUNC7(out_samplerates, &outlink->in_samplerates)) < 0)
        return ret;

    if(out_format != AV_SAMPLE_FMT_NONE) {
        int formatlist[] = { out_format, -1 };
        out_formats = FUNC8(formatlist);
    } else
        out_formats = FUNC4(AVMEDIA_TYPE_AUDIO);
    if ((ret = FUNC7(out_formats, &outlink->in_formats)) < 0)
        return ret;

    if(out_layout) {
        int64_t layout_list[] = { out_layout, -1 };
        out_layouts = FUNC2(layout_list);
    } else
        out_layouts = FUNC3();

    return FUNC6(out_layouts, &outlink->in_channel_layouts);
}