
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* task_threads_args; int arg_size; } ;
typedef TYPE_1__ taskset_t ;



__attribute__((used)) static inline void *
taskset_thread_args( taskset_t *ts, int thr_idx )
{
    return( ts->task_threads_args + ( ts->arg_size * thr_idx ) );
}
