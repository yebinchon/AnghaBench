
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int hb_value_t ;
struct TYPE_23__ {int den; int num; } ;
struct TYPE_22__ {int den; int num; } ;
struct TYPE_20__ {int den; int num; } ;
struct TYPE_21__ {TYPE_1__ par; int height; int width; } ;
struct TYPE_25__ {TYPE_4__ vrate; TYPE_3__ time_base; TYPE_2__ geometry; int pix_fmt; } ;
typedef TYPE_6__ hb_filter_init_t ;
struct TYPE_26__ {char* settings; TYPE_9__* output; int out_time_base; int * frame; int * avgraph; int last; TYPE_9__* input; } ;
typedef TYPE_7__ hb_avfilter_graph_t ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_28__ {TYPE_5__** inputs; } ;
struct TYPE_27__ {int filter_ctx; } ;
struct TYPE_24__ {int time_base; } ;
typedef TYPE_8__ AVFilterInOut ;
typedef TYPE_9__ AVFilterContext ;


 int AV_OPT_SEARCH_CHILDREN ;
 int AV_PIX_FMT_NONE ;
 int AV_PIX_FMT_YUV420P ;
 int HB_FILTER_AVFILTER ;
 TYPE_9__* append_filter (TYPE_7__*,char*,char*) ;
 int * av_frame_alloc () ;
 int av_opt_set (int *,char*,char*,int ) ;
 scalar_t__ av_opt_set_int_list (TYPE_9__*,char*,int*,int,int ) ;
 int * avfilter_graph_alloc () ;
 int avfilter_graph_config (int *,int *) ;
 int avfilter_graph_parse2 (int *,char*,TYPE_8__**,TYPE_8__**) ;
 int avfilter_inout_free (TYPE_8__**) ;
 int avfilter_link (int ,int ,int ,int ) ;
 TYPE_7__* calloc (int,int) ;
 int free (char*) ;
 int hb_avfilter_graph_close (TYPE_7__**) ;
 int hb_error (char*,...) ;
 char* hb_filter_settings_string (int ,int *) ;
 char* hb_strdup_printf (char*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

hb_avfilter_graph_t *
hb_avfilter_graph_init(hb_value_t * settings, hb_filter_init_t * init)
{
    hb_avfilter_graph_t * graph;
    AVFilterInOut * in = ((void*)0), * out = ((void*)0);
    AVFilterContext * avfilter;
    char * settings_str;
    int result;
    char * filter_args;

    graph = calloc(1, sizeof(hb_avfilter_graph_t));
    if (graph == ((void*)0))
    {
        return ((void*)0);
    }

    settings_str = hb_filter_settings_string(HB_FILTER_AVFILTER, settings);
    if (settings_str == ((void*)0))
    {
        hb_error("hb_avfilter_graph_init: no filter settings specified");
        goto fail;
    }

    graph->settings = settings_str;
    graph->avgraph = avfilter_graph_alloc();
    if (graph->avgraph == ((void*)0))
    {
        hb_error("hb_avfilter_graph_init: avfilter_graph_alloc failed");
        goto fail;
    }

    av_opt_set(graph->avgraph, "scale_sws_opts", "lanczos+accurate_rnd", 0);

    result = avfilter_graph_parse2(graph->avgraph, settings_str, &in, &out);
    if (result < 0 || in == ((void*)0) || out == ((void*)0))
    {
        hb_error("hb_avfilter_graph_init: avfilter_graph_parse2 failed (%s)",
                 settings_str);
        goto fail;
    }


    filter_args = hb_strdup_printf(
                "width=%d:height=%d:pix_fmt=%d:sar=%d/%d:"
                "time_base=%d/%d:frame_rate=%d/%d",
                init->geometry.width, init->geometry.height, init->pix_fmt,
                init->geometry.par.num, init->geometry.par.den,
                init->time_base.num, init->time_base.den,
                init->vrate.num, init->vrate.den);

    avfilter = append_filter(graph, "buffer", filter_args);
    free(filter_args);
    if (avfilter == ((void*)0))
    {
        hb_error("hb_avfilter_graph_init: failed to create buffer source filter");
        goto fail;
    }
    graph->input = avfilter;


    result = avfilter_link(graph->last, 0, in->filter_ctx, 0);
    if (result < 0)
    {
        goto fail;
    }
    graph->last = out->filter_ctx;


    avfilter = append_filter(graph, "buffersink", ((void*)0));
    if (avfilter == ((void*)0))
    {
        hb_error("hb_avfilter_graph_init: failed to create buffer output filter");
        goto fail;
    }
    graph->output = avfilter;

    result = avfilter_graph_config(graph->avgraph, ((void*)0));
    if (result < 0)
    {
        hb_error("hb_avfilter_graph_init: failed to configure filter graph");
        goto fail;
    }

    graph->frame = av_frame_alloc();
    if (graph->frame == ((void*)0))
    {
        hb_error("hb_avfilter_graph_init: failed to allocate frame filter");
        goto fail;
    }

    graph->out_time_base = graph->output->inputs[0]->time_base;

    avfilter_inout_free(&in);
    avfilter_inout_free(&out);

    return graph;

fail:
    avfilter_inout_free(&in);
    avfilter_inout_free(&out);
    hb_avfilter_graph_close(&graph);

    return ((void*)0);
}
