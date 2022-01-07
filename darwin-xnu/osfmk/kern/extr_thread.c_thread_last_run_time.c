
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* thread_t ;
struct TYPE_3__ {int last_run_time; } ;



uint64_t
thread_last_run_time(thread_t th)
{
 return th->last_run_time;
}
