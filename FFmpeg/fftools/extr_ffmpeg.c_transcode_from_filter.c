
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int unavailable; } ;
struct TYPE_13__ {scalar_t__ eof_reached; scalar_t__ eagain; } ;
struct TYPE_12__ {int nb_outputs; int nb_inputs; TYPE_1__** outputs; TYPE_3__** inputs; int graph; } ;
struct TYPE_11__ {int filter; TYPE_2__* ist; } ;
struct TYPE_10__ {size_t file_index; } ;
struct TYPE_9__ {TYPE_8__* ost; } ;
typedef TYPE_2__ InputStream ;
typedef TYPE_3__ InputFilter ;
typedef TYPE_4__ FilterGraph ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EAGAIN ;
 int av_buffersrc_get_nb_failed_requests (int ) ;
 int avfilter_graph_request_oldest (int ) ;
 int close_output_stream (TYPE_8__*) ;
 TYPE_7__** input_files ;
 int reap_filters (int) ;

__attribute__((used)) static int transcode_from_filter(FilterGraph *graph, InputStream **best_ist)
{
    int i, ret;
    int nb_requests, nb_requests_max = 0;
    InputFilter *ifilter;
    InputStream *ist;

    *best_ist = ((void*)0);
    ret = avfilter_graph_request_oldest(graph->graph);
    if (ret >= 0)
        return reap_filters(0);

    if (ret == AVERROR_EOF) {
        ret = reap_filters(1);
        for (i = 0; i < graph->nb_outputs; i++)
            close_output_stream(graph->outputs[i]->ost);
        return ret;
    }
    if (ret != AVERROR(EAGAIN))
        return ret;

    for (i = 0; i < graph->nb_inputs; i++) {
        ifilter = graph->inputs[i];
        ist = ifilter->ist;
        if (input_files[ist->file_index]->eagain ||
            input_files[ist->file_index]->eof_reached)
            continue;
        nb_requests = av_buffersrc_get_nb_failed_requests(ifilter->filter);
        if (nb_requests > nb_requests_max) {
            nb_requests_max = nb_requests;
            *best_ist = ist;
        }
    }

    if (!*best_ist)
        for (i = 0; i < graph->nb_outputs; i++)
            graph->outputs[i]->ost->unavailable = 1;

    return 0;
}
