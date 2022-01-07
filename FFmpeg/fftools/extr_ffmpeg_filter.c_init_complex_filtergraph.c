
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_16__ ;


struct TYPE_22__ {int nb_threads; } ;
struct TYPE_21__ {struct TYPE_21__* next; int pad_idx; TYPE_1__* filter_ctx; } ;
struct TYPE_20__ {int nb_outputs; TYPE_16__** outputs; int graph_desc; } ;
struct TYPE_19__ {int output_pads; } ;
struct TYPE_18__ {TYPE_3__* out_tmp; int name; int type; TYPE_2__* graph; } ;
typedef TYPE_2__ FilterGraph ;
typedef TYPE_3__ AVFilterInOut ;
typedef TYPE_4__ AVFilterGraph ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int GROW_ARRAY (TYPE_16__**,int) ;
 TYPE_16__* av_mallocz (int) ;
 TYPE_4__* avfilter_graph_alloc () ;
 int avfilter_graph_free (TYPE_4__**) ;
 int avfilter_graph_parse2 (TYPE_4__*,int ,TYPE_3__**,TYPE_3__**) ;
 int avfilter_inout_free (TYPE_3__**) ;
 int avfilter_pad_get_type (int ,int ) ;
 int describe_filter_link (TYPE_2__*,TYPE_3__*,int ) ;
 int exit_program (int) ;
 int init_input_filter (TYPE_2__*,TYPE_3__*) ;

int init_complex_filtergraph(FilterGraph *fg)
{
    AVFilterInOut *inputs, *outputs, *cur;
    AVFilterGraph *graph;
    int ret = 0;



    graph = avfilter_graph_alloc();
    if (!graph)
        return AVERROR(ENOMEM);
    graph->nb_threads = 1;

    ret = avfilter_graph_parse2(graph, fg->graph_desc, &inputs, &outputs);
    if (ret < 0)
        goto fail;

    for (cur = inputs; cur; cur = cur->next)
        init_input_filter(fg, cur);

    for (cur = outputs; cur;) {
        GROW_ARRAY(fg->outputs, fg->nb_outputs);
        fg->outputs[fg->nb_outputs - 1] = av_mallocz(sizeof(*fg->outputs[0]));
        if (!fg->outputs[fg->nb_outputs - 1])
            exit_program(1);

        fg->outputs[fg->nb_outputs - 1]->graph = fg;
        fg->outputs[fg->nb_outputs - 1]->out_tmp = cur;
        fg->outputs[fg->nb_outputs - 1]->type = avfilter_pad_get_type(cur->filter_ctx->output_pads,
                                                                         cur->pad_idx);
        fg->outputs[fg->nb_outputs - 1]->name = describe_filter_link(fg, cur, 0);
        cur = cur->next;
        fg->outputs[fg->nb_outputs - 1]->out_tmp->next = ((void*)0);
    }

fail:
    avfilter_inout_free(&inputs);
    avfilter_graph_free(&graph);
    return ret;
}
