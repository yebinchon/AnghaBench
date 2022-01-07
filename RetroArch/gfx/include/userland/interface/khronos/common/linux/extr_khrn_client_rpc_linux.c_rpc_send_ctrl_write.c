
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ merge_buffer; scalar_t__ merge_pos; } ;
typedef TYPE_1__ CLIENT_THREAD_STATE_T ;


 scalar_t__ MERGE_BUFFER_SIZE ;
 int memcpy (scalar_t__,int const*,int ) ;
 scalar_t__ rpc_pad_ctrl (int ) ;
 int vcos_assert (int) ;

void rpc_send_ctrl_write(CLIENT_THREAD_STATE_T *thread, const uint32_t in[], uint32_t len)
{


   memcpy(thread->merge_buffer + thread->merge_pos, in, len);
   thread->merge_pos += rpc_pad_ctrl(len);
   vcos_assert(thread->merge_pos <= MERGE_BUFFER_SIZE);
}
