
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct hb_filter_private_s {int dummy; } ;
struct TYPE_6__ {int initialized; int * graph; int list; void* output; void* input; } ;
typedef TYPE_1__ hb_filter_private_t ;
struct TYPE_7__ {int settings; TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_filter_object_t ;
typedef void* hb_filter_init_t ;


 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int hb_avfilter_graph_close (int **) ;
 int * hb_avfilter_graph_init (int ,void**) ;
 int hb_avfilter_graph_update_init (int *,void**) ;
 int hb_buffer_list_clear (int *) ;

__attribute__((used)) static int avfilter_init( hb_filter_object_t * filter, hb_filter_init_t * init )
{
    hb_filter_private_t * pv = ((void*)0);

    pv = calloc(1, sizeof(struct hb_filter_private_s));
    filter->private_data = pv;
    if (pv == ((void*)0))
    {
        return 1;
    }
    pv->input = *init;
    pv->initialized = 1;

    pv->graph = hb_avfilter_graph_init(filter->settings, init);
    if (pv->graph == ((void*)0))
    {
        goto fail;
    }


    hb_avfilter_graph_update_init(pv->graph, init);
    pv->output = *init;

    hb_buffer_list_clear(&pv->list);

    return 0;

fail:
    hb_avfilter_graph_close(&pv->graph);
    free(pv);

    return 1;
}
