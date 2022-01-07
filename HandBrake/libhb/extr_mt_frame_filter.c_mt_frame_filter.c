
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ frame_count; scalar_t__ thread_count; TYPE_1__** thread_data; int taskset; } ;
typedef TYPE_2__ hb_filter_private_t ;
typedef int hb_buffer_t ;
typedef int hb_buffer_list_t ;
struct TYPE_4__ {int out; } ;


 int hb_buffer_list_append (int *,int ) ;
 int * hb_buffer_list_clear (int *) ;
 int taskset_cycle (int *) ;

__attribute__((used)) static hb_buffer_t * mt_frame_filter(hb_filter_private_t *pv)
{
    if (pv->frame_count < pv->thread_count)
    {
        return ((void*)0);
    }

    taskset_cycle(&pv->taskset);
    pv->frame_count = 0;


    hb_buffer_list_t list;
    hb_buffer_list_clear(&list);
    for (int t = 0; t < pv->thread_count; t++)
    {
        hb_buffer_list_append(&list, pv->thread_data[t]->out);
    }
    return hb_buffer_list_clear(&list);
}
