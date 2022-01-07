
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mode; int decomb_check_taskset; } ;
typedef TYPE_1__ hb_filter_private_t ;
struct TYPE_6__ {int segment; int* segment_start; int* segment_height; TYPE_1__* pv; } ;
typedef TYPE_2__ decomb_thread_arg_t ;


 int MODE_FILTER ;
 int check_combing_mask (TYPE_1__*,int,int,int) ;
 int check_filtered_combing_mask (TYPE_1__*,int,int,int) ;
 int hb_deep_log (int,char*,int) ;
 int taskset_thread_complete (int *,int) ;
 scalar_t__ taskset_thread_stop (int *,int) ;
 int taskset_thread_wait4start (int *,int) ;

__attribute__((used)) static void decomb_check_thread( void *thread_args_v )
{
    hb_filter_private_t * pv;
    int segment, segment_start, segment_stop;
    decomb_thread_arg_t *thread_args = thread_args_v;

    pv = thread_args->pv;
    segment = thread_args->segment;

    hb_deep_log(3, "decomb check thread started for segment %d", segment);

    while (1)
    {



        taskset_thread_wait4start( &pv->decomb_check_taskset, segment );

        if (taskset_thread_stop( &pv->decomb_check_taskset, segment ))
        {



            break;
        }

        segment_start = thread_args->segment_start[0];
        segment_stop = segment_start + thread_args->segment_height[0];

        if (pv->mode & MODE_FILTER)
        {
            check_filtered_combing_mask(pv, segment, segment_start, segment_stop);
        }
        else
        {
            check_combing_mask(pv, segment, segment_start, segment_stop);
        }

        taskset_thread_complete( &pv->decomb_check_taskset, segment );
    }




    taskset_thread_complete( &pv->decomb_check_taskset, segment );
}
