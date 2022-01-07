
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ next_frame; scalar_t__ max_frames; scalar_t__ threads; TYPE_2__** thread_data; TYPE_4__* frame; int taskset; } ;
typedef TYPE_3__ hb_filter_private_t ;
typedef int hb_buffer_t ;
typedef int hb_buffer_list_t ;
struct TYPE_9__ {TYPE_1__* plane; } ;
struct TYPE_7__ {int out; } ;
struct TYPE_6__ {int * mem; int * mem_pre; int mutex; } ;
typedef TYPE_4__ Frame ;


 int free (int *) ;
 int hb_buffer_list_append (int *,int ) ;
 int * hb_buffer_list_clear (int *) ;
 int taskset_cycle (int *) ;

__attribute__((used)) static hb_buffer_t * nlmeans_filter(hb_filter_private_t *pv)
{
    if (pv->next_frame < pv->max_frames + pv->threads)
    {
        return ((void*)0);
    }

    taskset_cycle(&pv->taskset);


    for (int c = 0; c < 3; c++)
    {
        for (int t = 0; t < pv->threads; t++)
        {

            if (pv->frame[t].plane[c].mem_pre != ((void*)0) &&
                pv->frame[t].plane[c].mem_pre != pv->frame[t].plane[c].mem)
            {
                free(pv->frame[t].plane[c].mem_pre);
                pv->frame[t].plane[c].mem_pre = ((void*)0);
            }
            if (pv->frame[t].plane[c].mem != ((void*)0))
            {
                free(pv->frame[t].plane[c].mem);
                pv->frame[t].plane[c].mem = ((void*)0);
            }
        }
    }

    for (int f = 0; f < pv->max_frames; f++)
    {

        Frame frame = pv->frame[f];
        pv->frame[f] = pv->frame[f+pv->threads];
        for (int c = 0; c < 3; c++)
        {
            pv->frame[f].plane[c].mutex = frame.plane[c].mutex;
            pv->frame[f+pv->threads].plane[c].mem_pre = ((void*)0);
            pv->frame[f+pv->threads].plane[c].mem = ((void*)0);
        }
    }
    pv->next_frame -= pv->threads;


    hb_buffer_list_t list;
    hb_buffer_list_clear(&list);
    for (int t = 0; t < pv->threads; t++)
    {
        hb_buffer_list_append(&list, pv->thread_data[t]->out);
    }
    return hb_buffer_list_clear(&list);
}
