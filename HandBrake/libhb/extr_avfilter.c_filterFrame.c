
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int list; int graph; } ;
typedef TYPE_2__ hb_filter_private_t ;
struct TYPE_12__ {int start; int stop; } ;
struct TYPE_14__ {TYPE_1__ s; } ;
typedef TYPE_3__ hb_buffer_t ;
typedef int hb_buffer_list_t ;


 int hb_avfilter_add_buf (int ,TYPE_3__*) ;
 TYPE_3__* hb_avfilter_get_buf (int ) ;
 int hb_buffer_list_append (int *,TYPE_3__*) ;
 int hb_buffer_list_clear (int *) ;
 int hb_buffer_list_count (int *) ;
 TYPE_3__* hb_buffer_list_head (int *) ;
 TYPE_3__* hb_buffer_list_rem_head (int *) ;

__attribute__((used)) static hb_buffer_t* filterFrame( hb_filter_private_t * pv, hb_buffer_t * in )
{
    hb_buffer_list_t list;
    hb_buffer_t * buf, * next;

    hb_avfilter_add_buf(pv->graph, in);
    buf = hb_avfilter_get_buf(pv->graph);
    while (buf != ((void*)0))
    {
        hb_buffer_list_append(&pv->list, buf);
        buf = hb_avfilter_get_buf(pv->graph);
    }


    hb_buffer_list_clear(&list);
    while (hb_buffer_list_count(&pv->list) > 1)
    {
        buf = hb_buffer_list_rem_head(&pv->list);
        next = hb_buffer_list_head(&pv->list);

        buf->s.stop = next->s.start;
        hb_buffer_list_append(&list, buf);
    }

    return hb_buffer_list_head(&list);
}
