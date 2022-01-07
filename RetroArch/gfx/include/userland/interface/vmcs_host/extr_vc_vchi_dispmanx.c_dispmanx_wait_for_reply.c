
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int int32_t ;
struct TYPE_2__ {int * client_handle; } ;


 int VCHI_FLAGS_NONE ;
 scalar_t__ VCOS_SUCCESS ;
 TYPE_1__ dispmanx_client ;
 int dispmanx_message_available_event ;
 int vchi_msg_dequeue (int ,void*,scalar_t__,scalar_t__*,int ) ;
 scalar_t__ vcos_event_wait (int *) ;

__attribute__((used)) static int32_t dispmanx_wait_for_reply(void *response, uint32_t max_length) {
   int32_t success = 0;
   uint32_t length_read = 0;
   do {




      success = vchi_msg_dequeue( dispmanx_client.client_handle[0], response, max_length, &length_read, VCHI_FLAGS_NONE );
   } while( length_read == 0 && vcos_event_wait(&dispmanx_message_available_event) == VCOS_SUCCESS );

   return success;

}
