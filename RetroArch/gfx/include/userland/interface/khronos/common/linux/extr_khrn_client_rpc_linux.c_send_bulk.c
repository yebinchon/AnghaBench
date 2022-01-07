
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ VCOS_STATUS_T ;
typedef scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_3__ {scalar_t__ size; void const* data; } ;
typedef TYPE_1__ VCHIQ_ELEMENT_T ;
typedef int CLIENT_THREAD_STATE_T ;


 scalar_t__ KHDISPATCH_CTRL_THRESHOLD ;
 int UNUSED_NDEBUG (scalar_t__) ;
 scalar_t__ VCHIQ_SUCCESS ;
 scalar_t__ VCOS_SUCCESS ;
 int bulk_event ;
 int get_handle (int *) ;
 int rpc_pad_bulk (scalar_t__) ;
 scalar_t__ vchiq_queue_bulk_transmit (int ,void const*,int ,int *) ;
 scalar_t__ vchiq_queue_message (int ,TYPE_1__*,int) ;
 int vcos_assert (int) ;
 scalar_t__ vcos_event_wait (int *) ;

__attribute__((used)) static void send_bulk(CLIENT_THREAD_STATE_T *thread, const void *in, uint32_t len)
{
   if (len <= KHDISPATCH_CTRL_THRESHOLD) {
      VCHIQ_ELEMENT_T element;

      element.data = in;
      element.size = len;

      VCHIQ_STATUS_T vchiq_status = vchiq_queue_message(get_handle(thread), &element, 1);
      UNUSED_NDEBUG(vchiq_status);
      vcos_assert(vchiq_status == VCHIQ_SUCCESS);
   } else {
      VCHIQ_STATUS_T vchiq_status = vchiq_queue_bulk_transmit(get_handle(thread), in, rpc_pad_bulk(len), ((void*)0));
      UNUSED_NDEBUG(vchiq_status);
      vcos_assert(vchiq_status == VCHIQ_SUCCESS);
      VCOS_STATUS_T vcos_status = vcos_event_wait(&bulk_event);
      UNUSED_NDEBUG(vcos_status);
      vcos_assert(vcos_status == VCOS_SUCCESS);
   }
}
