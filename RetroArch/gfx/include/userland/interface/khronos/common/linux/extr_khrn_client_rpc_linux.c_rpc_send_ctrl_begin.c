
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ merge_pos; scalar_t__ merge_end; } ;
typedef TYPE_1__ CLIENT_THREAD_STATE_T ;


 scalar_t__ MERGE_BUFFER_SIZE ;
 int merge_flush (TYPE_1__*) ;
 scalar_t__ rpc_pad_ctrl (scalar_t__) ;
 int vcos_assert (int) ;

void rpc_send_ctrl_begin(CLIENT_THREAD_STATE_T *thread, uint32_t len)
{


   vcos_assert(len == rpc_pad_ctrl(len));
   if ((thread->merge_pos + len) > MERGE_BUFFER_SIZE) {
      merge_flush(thread);
   }

   thread->merge_end = thread->merge_pos + len;
}
