
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int task_stop_bitmap; } ;
typedef TYPE_1__ taskset_t ;


 int bit_is_set (int ,int) ;

__attribute__((used)) static inline int
taskset_thread_stop( taskset_t *ts, int thr_idx )
{
    return bit_is_set( ts->task_stop_bitmap, thr_idx );
}
