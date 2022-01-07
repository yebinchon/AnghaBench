
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int * filters; scalar_t__ nb_filters; } ;
typedef int AVFilterInOut ;
typedef TYPE_1__ AVFilterGraph ;
typedef int AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int WHITESPACES ;
 int append_inout (int **,int **) ;
 int av_freep (int **) ;
 int av_log (TYPE_1__*,int ,char*,char const*) ;
 int avfilter_free (int ) ;
 int avfilter_inout_free (int **) ;
 int link_filter_inouts (int *,int **,int **,TYPE_1__*) ;
 int parse_filter (int **,char const**,TYPE_1__*,int,TYPE_1__*) ;
 int parse_inputs (char const**,int **,int **,TYPE_1__*) ;
 int parse_outputs (char const**,int **,int **,int **,TYPE_1__*) ;
 int parse_sws_flags (char const**,TYPE_1__*) ;
 int strspn (char const*,int ) ;

int avfilter_graph_parse2(AVFilterGraph *graph, const char *filters,
                          AVFilterInOut **inputs,
                          AVFilterInOut **outputs)
{
    int index = 0, ret = 0;
    char chr = 0;

    AVFilterInOut *curr_inputs = ((void*)0), *open_inputs = ((void*)0), *open_outputs = ((void*)0);

    filters += strspn(filters, WHITESPACES);

    if ((ret = parse_sws_flags(&filters, graph)) < 0)
        goto fail;

    do {
        AVFilterContext *filter;
        filters += strspn(filters, WHITESPACES);

        if ((ret = parse_inputs(&filters, &curr_inputs, &open_outputs, graph)) < 0)
            goto end;
        if ((ret = parse_filter(&filter, &filters, graph, index, graph)) < 0)
            goto end;


        if ((ret = link_filter_inouts(filter, &curr_inputs, &open_inputs, graph)) < 0)
            goto end;

        if ((ret = parse_outputs(&filters, &curr_inputs, &open_inputs, &open_outputs,
                                 graph)) < 0)
            goto end;

        filters += strspn(filters, WHITESPACES);
        chr = *filters++;

        if (chr == ';' && curr_inputs)
            append_inout(&open_outputs, &curr_inputs);
        index++;
    } while (chr == ',' || chr == ';');

    if (chr) {
        av_log(graph, AV_LOG_ERROR,
               "Unable to parse graph description substring: \"%s\"\n",
               filters - 1);
        ret = AVERROR(EINVAL);
        goto end;
    }

    append_inout(&open_outputs, &curr_inputs);


    *inputs = open_inputs;
    *outputs = open_outputs;
    return 0;

 fail:end:
    while (graph->nb_filters)
        avfilter_free(graph->filters[0]);
    av_freep(&graph->filters);
    avfilter_inout_free(&open_inputs);
    avfilter_inout_free(&open_outputs);
    avfilter_inout_free(&curr_inputs);

    *inputs = ((void*)0);
    *outputs = ((void*)0);

    return ret;
}
