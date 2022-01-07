
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int name ;
struct TYPE_13__ {int nb_inputs; TYPE_2__** inputs; } ;
struct TYPE_12__ {int nb_filters; TYPE_4__** filters; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_1__* dstpad; } ;
struct TYPE_10__ {int needs_fifo; } ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterGraph ;
typedef TYPE_4__ AVFilterContext ;
typedef int AVFilter ;
typedef int AVClass ;


 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int * avfilter_get_by_name (char*) ;
 int avfilter_graph_create_filter (TYPE_4__**,int const*,char*,int *,int *,TYPE_3__*) ;
 int avfilter_insert_filter (TYPE_2__*,TYPE_4__*,int ,int ) ;
 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static int graph_insert_fifos(AVFilterGraph *graph, AVClass *log_ctx)
{
    AVFilterContext *f;
    int i, j, ret;
    int fifo_count = 0;

    for (i = 0; i < graph->nb_filters; i++) {
        f = graph->filters[i];

        for (j = 0; j < f->nb_inputs; j++) {
            AVFilterLink *link = f->inputs[j];
            AVFilterContext *fifo_ctx;
            const AVFilter *fifo;
            char name[32];

            if (!link->dstpad->needs_fifo)
                continue;

            fifo = f->inputs[j]->type == AVMEDIA_TYPE_VIDEO ?
                   avfilter_get_by_name("fifo") :
                   avfilter_get_by_name("afifo");

            snprintf(name, sizeof(name), "auto_fifo_%d", fifo_count++);

            ret = avfilter_graph_create_filter(&fifo_ctx, fifo, name, ((void*)0),
                                               ((void*)0), graph);
            if (ret < 0)
                return ret;

            ret = avfilter_insert_filter(link, fifo_ctx, 0, 0);
            if (ret < 0)
                return ret;
        }
    }

    return 0;
}
