
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int eedi2_taskset; } ;
typedef TYPE_1__ hb_filter_private_t ;
struct TYPE_5__ {int plane; TYPE_1__* pv; } ;
typedef TYPE_2__ eedi2_thread_arg_t ;


 int eedi2_interpolate_plane (TYPE_1__*,int) ;
 int hb_deep_log (int,char*,int) ;
 int taskset_thread_complete (int *,int) ;
 scalar_t__ taskset_thread_stop (int *,int) ;
 int taskset_thread_wait4start (int *,int) ;

__attribute__((used)) static void eedi2_filter_thread( void *thread_args_v )
{
    hb_filter_private_t * pv;
    int plane;
    eedi2_thread_arg_t *thread_args = thread_args_v;

    pv = thread_args->pv;
    plane = thread_args->plane;

    hb_deep_log(3, "eedi2 thread started for plane %d", plane);

    while (1)
    {



        taskset_thread_wait4start( &pv->eedi2_taskset, plane );

        if( taskset_thread_stop( &pv->eedi2_taskset, plane ) )
        {



            break;
        }




        eedi2_interpolate_plane( pv, plane );




        taskset_thread_complete( &pv->eedi2_taskset, plane );
    }

    taskset_thread_complete( &pv->eedi2_taskset, plane );
}
