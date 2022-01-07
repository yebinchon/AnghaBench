
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_9__ {scalar_t__ size; int data; } ;
typedef TYPE_1__ VCHIQ_ELEMENT_T ;
struct TYPE_10__ {scalar_t__ merge_pos; int merge_buffer; } ;
typedef TYPE_2__ CLIENT_THREAD_STATE_T ;


 scalar_t__ CLIENT_MAKE_CURRENT_SIZE ;
 int UNUSED_NDEBUG (scalar_t__) ;
 scalar_t__ VCHIQ_SUCCESS ;
 int client_send_make_current (TYPE_2__*) ;
 int get_handle (TYPE_2__*) ;
 int rpc_begin (TYPE_2__*) ;
 int rpc_end (TYPE_2__*) ;
 scalar_t__ vchiq_queue_message (int ,TYPE_1__*,int) ;
 int vcos_assert (int) ;
 int vcos_log_trace (char*) ;

__attribute__((used)) static void merge_flush(CLIENT_THREAD_STATE_T *thread)
{
   vcos_log_trace("merge_flush start");

   vcos_assert(thread->merge_pos >= CLIENT_MAKE_CURRENT_SIZE);







   if (thread->merge_pos > CLIENT_MAKE_CURRENT_SIZE) {
      VCHIQ_ELEMENT_T element;

      rpc_begin(thread);

      element.data = thread->merge_buffer;
      element.size = thread->merge_pos;

      VCHIQ_STATUS_T success = vchiq_queue_message(get_handle(thread), &element, 1);
      UNUSED_NDEBUG(success);
      vcos_assert(success == VCHIQ_SUCCESS);

      thread->merge_pos = 0;

      client_send_make_current(thread);

      vcos_assert(thread->merge_pos == CLIENT_MAKE_CURRENT_SIZE);

      rpc_end(thread);
   }
   vcos_log_trace( "merge_flush end");

}
