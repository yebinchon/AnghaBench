
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ VCOS_STATUS_T ;
struct TYPE_2__ {int notify_length; scalar_t__ to_exit; int notify_data; int (* notify_fn ) (int ,int,int,int,int,int) ;scalar_t__ physical_address; scalar_t__ logical_address; int * notify_buffer; int * notify_handle; int initialised; } ;
typedef scalar_t__ CEC_DEVICE_TYPE_T ;
typedef TYPE_1__ CECSERVICE_HOST_STATE_T ;


 int CEC_CB_REASON (int) ;
 int VCHI_FLAGS_NONE ;
 scalar_t__ VCOS_SUCCESS ;
 int VC_VTOH32 (int ) ;
 int cecservice_notify_available_event ;
 int * cecservice_notify_strings ;
 int max_notify_strings ;
 int stub1 (int ,int,int,int,int,int) ;
 int vc_cec_log_info (char*,...) ;
 scalar_t__ vchi_msg_dequeue (int ,int *,int,int*,int ) ;
 int vcos_assert (int) ;
 scalar_t__ vcos_event_wait (int *) ;

__attribute__((used)) static void *cecservice_notify_func(void *arg) {
   int32_t success;
   CECSERVICE_HOST_STATE_T *state = (CECSERVICE_HOST_STATE_T *) arg;

   vc_cec_log_info("CEC service async thread started");
   while(1) {
      VCOS_STATUS_T status = vcos_event_wait(&cecservice_notify_available_event);
      uint32_t cb_reason_str_idx = max_notify_strings - 1;
      if(status != VCOS_SUCCESS || !state->initialised || state->to_exit)
         break;

      do {
         uint32_t reason, param1, param2, param3, param4;

         success = vchi_msg_dequeue( state->notify_handle[0], state->notify_buffer, sizeof(state->notify_buffer), &state->notify_length, VCHI_FLAGS_NONE );
         if(success != 0 || state->notify_length < sizeof(uint32_t)*5 ) {
            vcos_assert(state->notify_length == sizeof(uint32_t)*5);
            break;
         }




         reason = VC_VTOH32(state->notify_buffer[0]);
         param1 = VC_VTOH32(state->notify_buffer[1]);
         param2 = VC_VTOH32(state->notify_buffer[2]);
         param3 = VC_VTOH32(state->notify_buffer[3]);
         param4 = VC_VTOH32(state->notify_buffer[4]);



         if(CEC_CB_REASON(reason) == 135) {
            state->logical_address = (CEC_DEVICE_TYPE_T) param1;
            state->physical_address = (uint16_t) (param2 & 0xFFFF);
         }

         switch(CEC_CB_REASON(reason)) {
         case 133:
            cb_reason_str_idx = 0; break;
         case 128:
            cb_reason_str_idx = 1; break;
         case 130:
            cb_reason_str_idx = 2; break;
         case 137:
            cb_reason_str_idx = 3; break;
         case 136:
            cb_reason_str_idx = 4; break;
         case 132:
            cb_reason_str_idx = 5; break;
         case 131:
            cb_reason_str_idx = 6; break;
         case 135:
            cb_reason_str_idx = 7; break;
         case 129:
            cb_reason_str_idx = 8; break;
         case 134:
            cb_reason_str_idx = 9; break;
         }

         vc_cec_log_info("CEC service callback [%s]: 0x%x, 0x%x, 0x%x, 0x%x",
                         cecservice_notify_strings[cb_reason_str_idx], param1, param2, param3, param4);

         if(state->notify_fn) {
            (*state->notify_fn)(state->notify_data, reason, param1, param2, param3, param4);
         } else {
            vc_cec_log_info("CEC service: No callback handler specified, callback [%s] swallowed",
                            cecservice_notify_strings[cb_reason_str_idx]);
         }

      } while(success == 0 && state->notify_length >= sizeof(uint32_t)*5);
   }

   if(state->to_exit)
      vc_cec_log_info("CEC service async thread exiting");

   return 0;
}
