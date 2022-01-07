
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* thread_t ;
struct TYPE_3__ {int kperf_flags; } ;



void
kperf_set_thread_flags(thread_t thread, uint32_t flags)
{
 thread->kperf_flags = flags;
}
