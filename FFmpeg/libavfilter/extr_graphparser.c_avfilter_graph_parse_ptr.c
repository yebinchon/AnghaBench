
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int nb_inputs; } ;
struct TYPE_8__ {int * filters; scalar_t__ nb_filters; } ;
typedef int AVFilterInOut ;
typedef TYPE_1__ AVFilterGraph ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int WHITESPACES ;
 int av_freep (int **) ;
 int av_log (void*,int ,char*,char const*) ;
 int avfilter_free (int ) ;
 int avfilter_inout_free (int **) ;
 int link_filter_inouts (TYPE_2__*,int **,int **,void*) ;
 int parse_filter (TYPE_2__**,char const**,TYPE_1__*,int,void*) ;
 int parse_inputs (char const**,int **,int **,void*) ;
 int parse_outputs (char const**,int **,int **,int **,void*) ;
 int parse_sws_flags (char const**,TYPE_1__*) ;
 int strspn (char const*,int ) ;

int avfilter_graph_parse_ptr(AVFilterGraph *graph, const char *filters,
                         AVFilterInOut **open_inputs_ptr, AVFilterInOut **open_outputs_ptr,
                         void *log_ctx)
{
    int index = 0, ret = 0;
    char chr = 0;

    AVFilterInOut *curr_inputs = ((void*)0);
    AVFilterInOut *open_inputs = open_inputs_ptr ? *open_inputs_ptr : ((void*)0);
    AVFilterInOut *open_outputs = open_outputs_ptr ? *open_outputs_ptr : ((void*)0);

    if ((ret = parse_sws_flags(&filters, graph)) < 0)
        goto end;

    do {
        AVFilterContext *filter;
        const char *filterchain = filters;
        filters += strspn(filters, WHITESPACES);

        if ((ret = parse_inputs(&filters, &curr_inputs, &open_outputs, log_ctx)) < 0)
            goto end;

        if ((ret = parse_filter(&filter, &filters, graph, index, log_ctx)) < 0)
            goto end;

        if (filter->nb_inputs == 1 && !curr_inputs && !index) {

            const char *tmp = "[in]";
            if ((ret = parse_inputs(&tmp, &curr_inputs, &open_outputs, log_ctx)) < 0)
                goto end;
        }

        if ((ret = link_filter_inouts(filter, &curr_inputs, &open_inputs, log_ctx)) < 0)
            goto end;

        if ((ret = parse_outputs(&filters, &curr_inputs, &open_inputs, &open_outputs,
                                 log_ctx)) < 0)
            goto end;

        filters += strspn(filters, WHITESPACES);
        chr = *filters++;

        if (chr == ';' && curr_inputs) {
            av_log(log_ctx, AV_LOG_ERROR,
                   "Invalid filterchain containing an unlabelled output pad: \"%s\"\n",
                   filterchain);
            ret = AVERROR(EINVAL);
            goto end;
        }
        index++;
    } while (chr == ',' || chr == ';');

    if (chr) {
        av_log(log_ctx, AV_LOG_ERROR,
               "Unable to parse graph description substring: \"%s\"\n",
               filters - 1);
        ret = AVERROR(EINVAL);
        goto end;
    }

    if (curr_inputs) {

        const char *tmp = "[out]";
        if ((ret = parse_outputs(&tmp, &curr_inputs, &open_inputs, &open_outputs,
                                 log_ctx)) < 0)
            goto end;
    }

end:

    if (open_inputs_ptr) *open_inputs_ptr = open_inputs;
    else avfilter_inout_free(&open_inputs);
    if (open_outputs_ptr) *open_outputs_ptr = open_outputs;
    else avfilter_inout_free(&open_outputs);
    avfilter_inout_free(&curr_inputs);

    if (ret < 0) {
        while (graph->nb_filters)
            avfilter_free(graph->filters[0]);
        av_freep(&graph->filters);
    }
    return ret;
}
