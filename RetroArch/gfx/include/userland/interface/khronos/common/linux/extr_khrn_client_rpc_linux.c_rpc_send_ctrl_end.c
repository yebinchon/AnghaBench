
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ merge_pos; scalar_t__ merge_end; } ;
typedef TYPE_1__ CLIENT_THREAD_STATE_T ;


 int vcos_assert (int) ;

void rpc_send_ctrl_end(CLIENT_THREAD_STATE_T *thread)
{


   vcos_assert(thread->merge_pos == thread->merge_end);
}
