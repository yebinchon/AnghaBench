
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int graph; int list; } ;
typedef TYPE_1__ hb_filter_private_t ;
struct TYPE_6__ {TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_filter_object_t ;


 int free (TYPE_1__*) ;
 int hb_avfilter_graph_close (int *) ;
 int hb_buffer_list_close (int *) ;

__attribute__((used)) static void avfilter_close( hb_filter_object_t * filter )
{
    hb_filter_private_t * pv = filter->private_data;
    if (pv == ((void*)0))
    {

        return;
    }

    hb_buffer_list_close(&pv->list);
    hb_avfilter_graph_close(&pv->graph);
    free(pv);
    filter->private_data = ((void*)0);
}
