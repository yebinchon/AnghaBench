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
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_7__ {TYPE_2__** outputs; TYPE_2__** inputs; TYPE_1__* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  in_samplerates; int /*<<< orphan*/  out_samplerates; int /*<<< orphan*/  in_channel_layouts; int /*<<< orphan*/  out_channel_layouts; int /*<<< orphan*/  in_formats; int /*<<< orphan*/  out_formats; } ;
struct TYPE_5__ {scalar_t__ do_video; } ;
typedef  TYPE_1__ EBUR128Context ;
typedef  TYPE_2__ AVFilterLink ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_3__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVFilterChannelLayouts ;

/* Variables and functions */
#define  AV_PIX_FMT_NONE 131 
#define  AV_PIX_FMT_RGB24 130 
#define  AV_SAMPLE_FMT_DBL 129 
#define  AV_SAMPLE_FMT_NONE 128 
 int /*<<< orphan*/ * FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int const*) ; 

__attribute__((used)) static int FUNC4(AVFilterContext *ctx)
{
    EBUR128Context *ebur128 = ctx->priv;
    AVFilterFormats *formats;
    AVFilterChannelLayouts *layouts;
    AVFilterLink *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];
    int ret;

    static const enum AVSampleFormat sample_fmts[] = { AV_SAMPLE_FMT_DBL, AV_SAMPLE_FMT_NONE };
    static const int input_srate[] = {48000, -1}; // ITU-R BS.1770 provides coeff only for 48kHz
    static const enum AVPixelFormat pix_fmts[] = { AV_PIX_FMT_RGB24, AV_PIX_FMT_NONE };

    /* set optional output video format */
    if (ebur128->do_video) {
        formats = FUNC3(pix_fmts);
        if ((ret = FUNC2(formats, &outlink->in_formats)) < 0)
            return ret;
        outlink = ctx->outputs[1];
    }

    /* set input and output audio formats
     * Note: ff_set_common_* functions are not used because they affect all the
     * links, and thus break the video format negotiation */
    formats = FUNC3(sample_fmts);
    if ((ret = FUNC2(formats, &inlink->out_formats)) < 0 ||
        (ret = FUNC2(formats, &outlink->in_formats)) < 0)
        return ret;

    layouts = FUNC0();
    if ((ret = FUNC1(layouts, &inlink->out_channel_layouts)) < 0 ||
        (ret = FUNC1(layouts, &outlink->in_channel_layouts)) < 0)
        return ret;

    formats = FUNC3(input_srate);
    if ((ret = FUNC2(formats, &inlink->out_samplerates)) < 0 ||
        (ret = FUNC2(formats, &outlink->in_samplerates)) < 0)
        return ret;

    return 0;
}