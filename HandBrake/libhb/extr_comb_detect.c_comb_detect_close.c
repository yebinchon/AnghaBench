
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mode; scalar_t__ filter_mode; struct TYPE_5__* block_score; int mask_temp; int mask_filtered; int mask; int * ref; int * ref_used; int mask_dilate_taskset; int mask_erode_taskset; int mask_filter_taskset; int decomb_check_taskset; int decomb_filter_taskset; int frames; int comb_none; int comb_light; int comb_heavy; } ;
typedef TYPE_1__ hb_filter_private_t ;
struct TYPE_6__ {TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_filter_object_t ;


 scalar_t__ FILTER_ERODE_DILATE ;
 int MODE_FILTER ;
 int free (TYPE_1__*) ;
 int hb_buffer_close (int *) ;
 int hb_log (char*,int ,int ,int ,int ) ;
 int taskset_fini (int *) ;

__attribute__((used)) static void comb_detect_close( hb_filter_object_t * filter )
{
    hb_filter_private_t * pv = filter->private_data;

    if (pv == ((void*)0))
    {
        return;
    }

    hb_log("comb detect: heavy %i | light %i | uncombed %i | total %i",
           pv->comb_heavy, pv->comb_light, pv->comb_none, pv->frames);

    taskset_fini( &pv->decomb_filter_taskset );
    taskset_fini( &pv->decomb_check_taskset );

    if (pv->mode & MODE_FILTER)
    {
        taskset_fini( &pv->mask_filter_taskset );
        if (pv->filter_mode == FILTER_ERODE_DILATE)
        {
            taskset_fini( &pv->mask_erode_taskset );
            taskset_fini( &pv->mask_dilate_taskset );
        }
    }


    int ii;
    for (ii = 0; ii < 3; ii++)
    {
        if (!pv->ref_used[ii])
        {
            hb_buffer_close(&pv->ref[ii]);
        }
    }


    hb_buffer_close(&pv->mask);
    hb_buffer_close(&pv->mask_filtered);
    hb_buffer_close(&pv->mask_temp);

    free(pv->block_score);
    free( pv );
    filter->private_data = ((void*)0);
}
