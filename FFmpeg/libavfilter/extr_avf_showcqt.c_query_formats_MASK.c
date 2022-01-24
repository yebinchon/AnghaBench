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
typedef  int int64_t ;
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_5__ {TYPE_1__** outputs; TYPE_1__** inputs; } ;
struct TYPE_4__ {int /*<<< orphan*/  in_formats; int /*<<< orphan*/  out_samplerates; int /*<<< orphan*/  out_channel_layouts; int /*<<< orphan*/  out_formats; } ;
typedef  TYPE_1__ AVFilterLink ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_2__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;

/* Variables and functions */
 int AV_CH_LAYOUT_STEREO ; 
 int AV_CH_LAYOUT_STEREO_DOWNMIX ; 
 int AV_PIX_FMT_NONE ; 
 int AV_PIX_FMT_RGB24 ; 
 int AV_PIX_FMT_YUV420P ; 
 int AV_PIX_FMT_YUV422P ; 
 int AV_PIX_FMT_YUV444P ; 
 int AV_SAMPLE_FMT_FLT ; 
 int AV_SAMPLE_FMT_NONE ; 
 int /*<<< orphan*/ * FUNC0 (int*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int*) ; 

__attribute__((used)) static int FUNC5(AVFilterContext *ctx)
{
    AVFilterFormats *formats = NULL;
    AVFilterChannelLayouts *layouts = NULL;
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    enum AVSampleFormat sample_fmts[] = { AV_SAMPLE_FMT_FLT, AV_SAMPLE_FMT_NONE };
    enum AVPixelFormat pix_fmts[] = {
        AV_PIX_FMT_YUV420P, AV_PIX_FMT_YUV422P,
        AV_PIX_FMT_YUV444P, AV_PIX_FMT_RGB24, AV_PIX_FMT_NONE
    };
    int64_t channel_layouts[] = { AV_CH_LAYOUT_STEREO, AV_CH_LAYOUT_STEREO_DOWNMIX, -1 };
    int ret;

    /* set input audio formats */
    formats = FUNC4(sample_fmts);
    if ((ret = FUNC3(formats, &inlink->out_formats)) < 0)
        return ret;

    layouts = FUNC0(channel_layouts);
    if ((ret = FUNC2(layouts, &inlink->out_channel_layouts)) < 0)
        return ret;

    formats = FUNC1();
    if ((ret = FUNC3(formats, &inlink->out_samplerates)) < 0)
        return ret;

    /* set output video format */
    formats = FUNC4(pix_fmts);
    if ((ret = FUNC3(formats, &outlink->in_formats)) < 0)
        return ret;

    return 0;
}