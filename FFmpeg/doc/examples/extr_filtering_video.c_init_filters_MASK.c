#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef  int /*<<< orphan*/  args ;
struct TYPE_12__ {int num; int den; } ;
struct TYPE_16__ {int width; int height; int pix_fmt; TYPE_2__ sample_aspect_ratio; } ;
struct TYPE_15__ {TYPE_1__** streams; } ;
struct TYPE_14__ {int /*<<< orphan*/ * next; scalar_t__ pad_idx; void* filter_ctx; void* name; } ;
struct TYPE_13__ {int num; int den; } ;
struct TYPE_11__ {TYPE_3__ time_base; } ;
typedef  TYPE_3__ AVRational ;
typedef  TYPE_4__ AVFilterInOut ;
typedef  int /*<<< orphan*/  AVFilter ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_OPT_SEARCH_CHILDREN ; 
 int AV_PIX_FMT_GRAY8 ; 
 int AV_PIX_FMT_NONE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (void*,char*,int*,int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (void**,int /*<<< orphan*/  const*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,char const*,TYPE_4__**,TYPE_4__**,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__**) ; 
 void* buffersink_ctx ; 
 void* buffersrc_ctx ; 
 TYPE_6__* dec_ctx ; 
 int /*<<< orphan*/  filter_graph ; 
 TYPE_5__* fmt_ctx ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int,int,int,int,int,int,int) ; 
 size_t video_stream_index ; 

__attribute__((used)) static int FUNC12(const char *filters_descr)
{
    char args[512];
    int ret = 0;
    const AVFilter *buffersrc  = FUNC4("buffer");
    const AVFilter *buffersink = FUNC4("buffersink");
    AVFilterInOut *outputs = FUNC9();
    AVFilterInOut *inputs  = FUNC9();
    AVRational time_base = fmt_ctx->streams[video_stream_index]->time_base;
    enum AVPixelFormat pix_fmts[] = { AV_PIX_FMT_GRAY8, AV_PIX_FMT_NONE };

    filter_graph = FUNC5();
    if (!outputs || !inputs || !filter_graph) {
        ret = FUNC0(ENOMEM);
        goto end;
    }

    /* buffer video source: the decoded frames from the decoder will be inserted here. */
    FUNC11(args, sizeof(args),
            "video_size=%dx%d:pix_fmt=%d:time_base=%d/%d:pixel_aspect=%d/%d",
            dec_ctx->width, dec_ctx->height, dec_ctx->pix_fmt,
            time_base.num, time_base.den,
            dec_ctx->sample_aspect_ratio.num, dec_ctx->sample_aspect_ratio.den);

    ret = FUNC7(&buffersrc_ctx, buffersrc, "in",
                                       args, NULL, filter_graph);
    if (ret < 0) {
        FUNC1(NULL, AV_LOG_ERROR, "Cannot create buffer source\n");
        goto end;
    }

    /* buffer video sink: to terminate the filter chain. */
    ret = FUNC7(&buffersink_ctx, buffersink, "out",
                                       NULL, NULL, filter_graph);
    if (ret < 0) {
        FUNC1(NULL, AV_LOG_ERROR, "Cannot create buffer sink\n");
        goto end;
    }

    ret = FUNC2(buffersink_ctx, "pix_fmts", pix_fmts,
                              AV_PIX_FMT_NONE, AV_OPT_SEARCH_CHILDREN);
    if (ret < 0) {
        FUNC1(NULL, AV_LOG_ERROR, "Cannot set output pixel format\n");
        goto end;
    }

    /*
     * Set the endpoints for the filter graph. The filter_graph will
     * be linked to the graph described by filters_descr.
     */

    /*
     * The buffer source output must be connected to the input pad of
     * the first filter described by filters_descr; since the first
     * filter input label is not specified, it is set to "in" by
     * default.
     */
    outputs->name       = FUNC3("in");
    outputs->filter_ctx = buffersrc_ctx;
    outputs->pad_idx    = 0;
    outputs->next       = NULL;

    /*
     * The buffer sink input must be connected to the output pad of
     * the last filter described by filters_descr; since the last
     * filter output label is not specified, it is set to "out" by
     * default.
     */
    inputs->name       = FUNC3("out");
    inputs->filter_ctx = buffersink_ctx;
    inputs->pad_idx    = 0;
    inputs->next       = NULL;

    if ((ret = FUNC8(filter_graph, filters_descr,
                                    &inputs, &outputs, NULL)) < 0)
        goto end;

    if ((ret = FUNC6(filter_graph, NULL)) < 0)
        goto end;

end:
    FUNC10(&inputs);
    FUNC10(&outputs);

    return ret;
}