
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int* nframes; int threads; int max_frames; struct TYPE_7__* thread_data; struct TYPE_7__* frame; TYPE_1__* plane; int taskset; } ;
typedef TYPE_2__ hb_filter_private_t ;
struct TYPE_8__ {TYPE_2__* private_data; } ;
typedef TYPE_3__ hb_filter_object_t ;
struct TYPE_6__ {int mutex; TYPE_2__* mem; TYPE_2__* mem_pre; } ;


 int free (TYPE_2__*) ;
 int hb_lock_close (int *) ;
 int taskset_fini (int *) ;

__attribute__((used)) static void nlmeans_close(hb_filter_object_t *filter)
{
    hb_filter_private_t *pv = filter->private_data;

    if (pv == ((void*)0))
    {
        return;
    }

    taskset_fini(&pv->taskset);
    for (int c = 0; c < 3; c++)
    {
        for (int f = 0; f < pv->nframes[c]; f++)
        {
            if (pv->frame[f].plane[c].mem_pre != ((void*)0) &&
                pv->frame[f].plane[c].mem_pre != pv->frame[f].plane[c].mem)
            {
                free(pv->frame[f].plane[c].mem_pre);
                pv->frame[f].plane[c].mem_pre = ((void*)0);
            }
            if (pv->frame[f].plane[c].mem != ((void*)0))
            {
                free(pv->frame[f].plane[c].mem);
                pv->frame[f].plane[c].mem = ((void*)0);
            }
        }
    }

    for (int ii = 0; ii < pv->threads + pv->max_frames; ii++)
    {
        for (int c = 0; c < 3; c++)
        {
            hb_lock_close(&pv->frame[ii].plane[c].mutex);
        }
    }

    free(pv->frame);
    free(pv->thread_data);
    free(pv);
    filter->private_data = ((void*)0);
}
