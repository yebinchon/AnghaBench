#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hb_value_t ;
struct TYPE_23__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_22__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_20__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_21__ {TYPE_1__ par; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_25__ {TYPE_4__ vrate; TYPE_3__ time_base; TYPE_2__ geometry; int /*<<< orphan*/  pix_fmt; } ;
typedef  TYPE_6__ hb_filter_init_t ;
struct TYPE_26__ {char* settings; TYPE_9__* output; int /*<<< orphan*/  out_time_base; int /*<<< orphan*/ * frame; int /*<<< orphan*/ * avgraph; int /*<<< orphan*/  last; TYPE_9__* input; } ;
typedef  TYPE_7__ hb_avfilter_graph_t ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_28__ {TYPE_5__** inputs; } ;
struct TYPE_27__ {int /*<<< orphan*/  filter_ctx; } ;
struct TYPE_24__ {int /*<<< orphan*/  time_base; } ;
typedef  TYPE_8__ AVFilterInOut ;
typedef  TYPE_9__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_OPT_SEARCH_CHILDREN ; 
 int AV_PIX_FMT_NONE ; 
 int AV_PIX_FMT_YUV420P ; 
 int /*<<< orphan*/  HB_FILTER_AVFILTER ; 
 TYPE_9__* FUNC0 (TYPE_7__*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_9__*,char*,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,TYPE_8__**,TYPE_8__**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__**) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__**) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 char* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

hb_avfilter_graph_t *
FUNC15(hb_value_t * settings, hb_filter_init_t * init)
{
    hb_avfilter_graph_t * graph;
    AVFilterInOut       * in = NULL, * out = NULL;
    AVFilterContext     * avfilter;
    char                * settings_str;
    int                   result;
    char                * filter_args;

    graph = FUNC9(1, sizeof(hb_avfilter_graph_t));
    if (graph == NULL)
    {
        return NULL;
    }

    settings_str = FUNC13(HB_FILTER_AVFILTER, settings);
    if (settings_str == NULL)
    {
        FUNC12("hb_avfilter_graph_init: no filter settings specified");
        goto fail;
    }

    graph->settings = settings_str;
    graph->avgraph = FUNC4();
    if (graph->avgraph == NULL)
    {
        FUNC12("hb_avfilter_graph_init: avfilter_graph_alloc failed");
        goto fail;
    }

    FUNC2(graph->avgraph, "scale_sws_opts", "lanczos+accurate_rnd", 0);

    result = FUNC6(graph->avgraph, settings_str, &in, &out);
    if (result < 0 || in == NULL || out == NULL)
    {
        FUNC12("hb_avfilter_graph_init: avfilter_graph_parse2 failed (%s)",
                 settings_str);
        goto fail;
    }

    // Build filter input
    filter_args = FUNC14(
                "width=%d:height=%d:pix_fmt=%d:sar=%d/%d:"
                "time_base=%d/%d:frame_rate=%d/%d",
                init->geometry.width, init->geometry.height, init->pix_fmt,
                init->geometry.par.num, init->geometry.par.den,
                init->time_base.num, init->time_base.den,
                init->vrate.num, init->vrate.den);

    avfilter = FUNC0(graph, "buffer", filter_args);
    FUNC10(filter_args);
    if (avfilter == NULL)
    {
        FUNC12("hb_avfilter_graph_init: failed to create buffer source filter");
        goto fail;
    }
    graph->input = avfilter;

    // Link input to filter chain created by avfilter_graph_parse2
    result = FUNC8(graph->last, 0, in->filter_ctx, 0);
    if (result < 0)
    {
        goto fail;
    }
    graph->last = out->filter_ctx;

    // Build filter output
    avfilter = FUNC0(graph, "buffersink", NULL);
    if (avfilter == NULL)
    {
        FUNC12("hb_avfilter_graph_init: failed to create buffer output filter");
        goto fail;
    }
#if 0
    // Set output pix fmt to YUV420P
    enum AVPixelFormat pix_fmts[2] = {AV_PIX_FMT_YUV420P, AV_PIX_FMT_NONE};
    if (av_opt_set_int_list(avfilter, "pix_fmts", pix_fmts,
                            AV_PIX_FMT_NONE, AV_OPT_SEARCH_CHILDREN) < 0)
    {
        hb_error("hb_avfilter_graph_init: failed to set buffersink pix_fmt");
        goto fail;
    }
#endif

    graph->output = avfilter;

    result = FUNC5(graph->avgraph, NULL);
    if (result < 0)
    {
        FUNC12("hb_avfilter_graph_init: failed to configure filter graph");
        goto fail;
    }

    graph->frame = FUNC1();
    if (graph->frame == NULL)
    {
        FUNC12("hb_avfilter_graph_init: failed to allocate frame filter");
        goto fail;
    }

    graph->out_time_base = graph->output->inputs[0]->time_base;

    FUNC7(&in);
    FUNC7(&out);

    return graph;

fail:
    FUNC7(&in);
    FUNC7(&out);
    FUNC11(&graph);

    return NULL;
}