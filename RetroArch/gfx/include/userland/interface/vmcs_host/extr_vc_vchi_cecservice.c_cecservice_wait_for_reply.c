
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ int32_t ;
struct TYPE_2__ {int * client_handle; } ;


 int VCHI_FLAGS_NONE ;
 scalar_t__ VCOS_SUCCESS ;
 TYPE_1__ cecservice_client ;
 int cecservice_message_available_event ;
 int vc_cec_log_info (char*,scalar_t__) ;
 int vc_cec_log_warn (char*,int ) ;
 scalar_t__ vchi2service_status (int ) ;
 int vchi2service_status_string (scalar_t__) ;
 int vchi_msg_dequeue (int ,void*,scalar_t__,scalar_t__*,int ) ;
 scalar_t__ vcos_event_wait (int *) ;

__attribute__((used)) static int32_t cecservice_wait_for_reply(void *response, uint32_t max_length) {
   int32_t success = 0;
   uint32_t length_read = 0;
   do {




      success = (int32_t) vchi2service_status(vchi_msg_dequeue( cecservice_client.client_handle[0], response, max_length, &length_read, VCHI_FLAGS_NONE ));
   } while( length_read == 0 && vcos_event_wait(&cecservice_message_available_event) == VCOS_SUCCESS);
   if(length_read) {
      vc_cec_log_info("CEC service got reply %d bytes", length_read);
   } else {
      vc_cec_log_warn("CEC service wait for reply failed, error: %s",
                      vchi2service_status_string(success));
   }

   return success;
}
