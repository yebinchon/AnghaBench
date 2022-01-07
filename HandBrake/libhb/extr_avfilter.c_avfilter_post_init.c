
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int hb_job_t ;
struct TYPE_5__ {int * graph; int list; int output; int input; scalar_t__ initialized; } ;
typedef TYPE_1__ hb_filter_private_t ;
struct TYPE_6__ {int settings; TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_filter_object_t ;


 int free (TYPE_1__*) ;
 int hb_avfilter_graph_close (int **) ;
 int * hb_avfilter_graph_init (int ,int *) ;
 int hb_avfilter_graph_update_init (int *,int *) ;
 int hb_buffer_list_clear (int *) ;

__attribute__((used)) static int avfilter_post_init( hb_filter_object_t * filter, hb_job_t * job )
{
    hb_filter_private_t * pv = filter->private_data;

    if (pv == ((void*)0))
    {
        return 1;
    }
    if (pv->initialized)
    {
        return 0;
    }

    pv->graph = hb_avfilter_graph_init(filter->settings, &pv->input);
    if (pv->graph == ((void*)0))
    {
        goto fail;
    }


    pv->output = pv->input;
    hb_avfilter_graph_update_init(pv->graph, &pv->output);

    hb_buffer_list_clear(&pv->list);

    return 0;

fail:
    hb_avfilter_graph_close(&pv->graph);
    free(pv);

    return 1;
}
