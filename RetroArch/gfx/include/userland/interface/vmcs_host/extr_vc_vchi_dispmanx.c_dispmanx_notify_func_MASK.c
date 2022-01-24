#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
typedef  scalar_t__ VCOS_STATUS_T ;
struct TYPE_2__ {scalar_t__ pending_update_handle; int /*<<< orphan*/  vsync_callback_param; int /*<<< orphan*/  (* vsync_callback ) (scalar_t__,int /*<<< orphan*/ ) ;int /*<<< orphan*/  update_callback_param; int /*<<< orphan*/  (* update_callback ) (scalar_t__,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * notify_handle; scalar_t__* notify_buffer; int /*<<< orphan*/  notify_length; int /*<<< orphan*/  initialised; } ;
typedef  scalar_t__ DISPMANX_UPDATE_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  VCHI_FLAGS_NONE ; 
 scalar_t__ VCOS_SUCCESS ; 
 TYPE_1__ dispmanx_client ; 
 int /*<<< orphan*/  dispmanx_notify_available_event ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC6( void *arg ) {
   int32_t success;
   VCOS_STATUS_T status;

   (void)arg;

   while (1) {
      DISPMANX_UPDATE_HANDLE_T handle;
      status = FUNC5(&dispmanx_notify_available_event);
      if (status != VCOS_SUCCESS || !dispmanx_client.initialised)
         break;

      while (1) {
         success = FUNC2( dispmanx_client.notify_handle[0], dispmanx_client.notify_buffer, sizeof(dispmanx_client.notify_buffer), &dispmanx_client.notify_length, VCHI_FLAGS_NONE );
         if (success != 0)
            break;

         handle = (DISPMANX_UPDATE_HANDLE_T)dispmanx_client.notify_buffer[0];
         if (handle) {
            // This is the response to an update submit
            // Decrement the use count - the corresponding "use" is in vc_dispmanx_update_submit.
            FUNC3(dispmanx_client.notify_handle[0]);
            if (dispmanx_client.update_callback ) {
               FUNC4( dispmanx_client.pending_update_handle == handle);
               dispmanx_client.update_callback(handle, dispmanx_client.update_callback_param);
            }
         } else {
            // This is a vsync notification
            if (dispmanx_client.vsync_callback ) {
               dispmanx_client.vsync_callback(handle, dispmanx_client.vsync_callback_param);
            }
         }
      }
   }
   return 0;
}