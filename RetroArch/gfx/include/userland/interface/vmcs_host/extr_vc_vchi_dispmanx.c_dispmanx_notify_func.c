
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
typedef scalar_t__ VCOS_STATUS_T ;
struct TYPE_2__ {scalar_t__ pending_update_handle; int vsync_callback_param; int (* vsync_callback ) (scalar_t__,int ) ;int update_callback_param; int (* update_callback ) (scalar_t__,int ) ;int * notify_handle; scalar_t__* notify_buffer; int notify_length; int initialised; } ;
typedef scalar_t__ DISPMANX_UPDATE_HANDLE_T ;


 int VCHI_FLAGS_NONE ;
 scalar_t__ VCOS_SUCCESS ;
 TYPE_1__ dispmanx_client ;
 int dispmanx_notify_available_event ;
 int stub1 (scalar_t__,int ) ;
 int stub2 (scalar_t__,int ) ;
 scalar_t__ vchi_msg_dequeue (int ,scalar_t__*,int,int *,int ) ;
 int vchi_service_release (int ) ;
 int vcos_assert (int) ;
 scalar_t__ vcos_event_wait (int *) ;

__attribute__((used)) static void *dispmanx_notify_func( void *arg ) {
   int32_t success;
   VCOS_STATUS_T status;

   (void)arg;

   while (1) {
      DISPMANX_UPDATE_HANDLE_T handle;
      status = vcos_event_wait(&dispmanx_notify_available_event);
      if (status != VCOS_SUCCESS || !dispmanx_client.initialised)
         break;

      while (1) {
         success = vchi_msg_dequeue( dispmanx_client.notify_handle[0], dispmanx_client.notify_buffer, sizeof(dispmanx_client.notify_buffer), &dispmanx_client.notify_length, VCHI_FLAGS_NONE );
         if (success != 0)
            break;

         handle = (DISPMANX_UPDATE_HANDLE_T)dispmanx_client.notify_buffer[0];
         if (handle) {


            vchi_service_release(dispmanx_client.notify_handle[0]);
            if (dispmanx_client.update_callback ) {
               vcos_assert( dispmanx_client.pending_update_handle == handle);
               dispmanx_client.update_callback(handle, dispmanx_client.update_callback_param);
            }
         } else {

            if (dispmanx_client.vsync_callback ) {
               dispmanx_client.vsync_callback(handle, dispmanx_client.vsync_callback_param);
            }
         }
      }
   }
   return 0;
}
