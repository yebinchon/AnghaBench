
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int data ;
struct TYPE_6__ {scalar_t__ merge_pos; int merge_buffer; } ;
typedef TYPE_1__ CLIENT_THREAD_STATE_T ;


 scalar_t__ CLIENT_MAKE_CURRENT_SIZE ;
 scalar_t__ EGLINTMAKECURRENT_ID ;
 int RPC_CALL8 (int ,TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int eglIntMakeCurrent_impl ;
 int memcpy (scalar_t__*,int ,int) ;
 int rpc_begin (TYPE_1__*) ;
 int rpc_end (TYPE_1__*) ;
 int vcos_assert (int) ;
 int vcos_log_trace (char*) ;

void rpc_call8_makecurrent(CLIENT_THREAD_STATE_T *thread, uint32_t id, uint32_t p0,
   uint32_t p1, uint32_t p2, uint32_t p3, uint32_t p4, uint32_t p5, uint32_t p6, uint32_t p7)
{
   uint32_t data;
   if (thread->merge_pos == CLIENT_MAKE_CURRENT_SIZE && (memcpy(&data,thread->merge_buffer,sizeof(data)), data == EGLINTMAKECURRENT_ID))
   {
      rpc_begin(thread);
      vcos_log_trace("rpc_call8_makecurrent collapse onto previous makecurrent");

      thread->merge_pos = 0;

      RPC_CALL8(eglIntMakeCurrent_impl, thread, EGLINTMAKECURRENT_ID, p0, p1, p2, p3, p4, p5, p6, p7);
      vcos_assert(thread->merge_pos == CLIENT_MAKE_CURRENT_SIZE);

      rpc_end(thread);
   }
   else
   {
      RPC_CALL8(eglIntMakeCurrent_impl, thread, EGLINTMAKECURRENT_ID, p0, p1, p2, p3, p4, p5, p6, p7);
   }
}
