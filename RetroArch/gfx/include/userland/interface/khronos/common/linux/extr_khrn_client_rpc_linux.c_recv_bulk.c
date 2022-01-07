
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ VCOS_STATUS_T ;
typedef scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_4__ {scalar_t__ size; int data; } ;
typedef TYPE_1__ VCHIQ_HEADER_T ;
typedef int CLIENT_THREAD_STATE_T ;


 scalar_t__ KHDISPATCH_CTRL_THRESHOLD ;
 int UNUSED_NDEBUG (scalar_t__) ;
 scalar_t__ VCHIQ_SUCCESS ;
 scalar_t__ VCOS_SUCCESS ;
 int bulk_event ;
 int get_handle (int *) ;
 int get_queue (int *) ;
 int memcpy (void*,int ,scalar_t__) ;
 int rpc_pad_bulk (scalar_t__) ;
 scalar_t__ vchiq_queue_bulk_receive (int ,void*,int ,int *) ;
 int vchiq_release_message (int ,TYPE_1__*) ;
 TYPE_1__* vchiu_queue_pop (int ) ;
 int vcos_assert (int) ;
 scalar_t__ vcos_event_wait (int *) ;

__attribute__((used)) static void recv_bulk(CLIENT_THREAD_STATE_T *thread, void *out, uint32_t len)
{
   if (len <= KHDISPATCH_CTRL_THRESHOLD) {
      VCHIQ_HEADER_T *header = vchiu_queue_pop(get_queue(thread));
      vcos_assert(header->size == len);
      memcpy(out, header->data, len);
      vchiq_release_message(get_handle(thread), header);
   } else {
      VCHIQ_STATUS_T vchiq_status = vchiq_queue_bulk_receive(get_handle(thread), out, rpc_pad_bulk(len), ((void*)0));
      UNUSED_NDEBUG(vchiq_status);
      vcos_assert(vchiq_status == VCHIQ_SUCCESS);
      VCOS_STATUS_T vcos_status = vcos_event_wait(&bulk_event);
      UNUSED_NDEBUG(vcos_status);
      vcos_assert(vcos_status == VCOS_SUCCESS);
   }
}
