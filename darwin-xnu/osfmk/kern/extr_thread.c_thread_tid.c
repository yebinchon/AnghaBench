
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* thread_t ;
struct TYPE_4__ {int thread_id; } ;


 TYPE_1__* THREAD_NULL ;

uint64_t
thread_tid(
 thread_t thread)
{
 return (thread != THREAD_NULL? thread->thread_id: 0);
}
