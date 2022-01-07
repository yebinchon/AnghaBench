
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mode; scalar_t__ filter_mode; int decomb_check_taskset; int mask_erode_taskset; int mask_dilate_taskset; int mask_filter_taskset; int decomb_filter_taskset; } ;
typedef TYPE_1__ hb_filter_private_t ;


 scalar_t__ FILTER_ERODE_DILATE ;
 int MODE_FILTER ;
 int check_combing_results (TYPE_1__*) ;
 int reset_combing_results (TYPE_1__*) ;
 int taskset_cycle (int *) ;

__attribute__((used)) static int comb_segmenter( hb_filter_private_t * pv )
{




    taskset_cycle( &pv->decomb_filter_taskset );

    if (pv->mode & MODE_FILTER)
    {
        taskset_cycle( &pv->mask_filter_taskset );
        if (pv->filter_mode == FILTER_ERODE_DILATE)
        {
            taskset_cycle( &pv->mask_erode_taskset );
            taskset_cycle( &pv->mask_dilate_taskset );
            taskset_cycle( &pv->mask_erode_taskset );
        }
    }
    reset_combing_results(pv);
    taskset_cycle(&pv->decomb_check_taskset);
    return check_combing_results(pv);
}
