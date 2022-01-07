
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int high_priority; } ;
typedef TYPE_1__ CLIENT_THREAD_STATE_T ;


 int merge_flush (TYPE_1__*) ;
 int vcos_assert (int) ;

void rpc_high_priority_end(CLIENT_THREAD_STATE_T *thread)
{
   vcos_assert(thread->high_priority);
   merge_flush(thread);
   thread->high_priority = 0;
}
