
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int thread_func_t ;
struct TYPE_4__ {int ** task_threads; } ;
typedef TYPE_1__ taskset_t ;


 int * hb_thread_init (char const*,int *,int ,int) ;
 int taskset_thread_args (TYPE_1__*,int) ;

int
taskset_thread_spawn( taskset_t *ts, int thr_idx, const char *descr,
                      thread_func_t *func, int priority )
{
    ts->task_threads[thr_idx] = hb_thread_init( descr, func,
                                                taskset_thread_args( ts, thr_idx ),
                                                priority);
    return( ts->task_threads[thr_idx] != ((void*)0) );
}
