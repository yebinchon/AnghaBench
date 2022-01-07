
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ VCOS_STATUS_T ;
struct TYPE_8__ {void* aspect; } ;
struct TYPE_11__ {int num_modes; int is_valid; } ;
struct TYPE_10__ {int num_modes; int is_valid; } ;
struct TYPE_13__ {int notify_length; int copy_protect; int hdmi_preferred_mode; int hdmi_current_mode; int sdtv_current_colour; scalar_t__ to_exit; TYPE_2__* callbacks; int sdtv_current_cp_mode; TYPE_1__ sdtv_options; void* sdtv_current_mode; void* hdmi_current_group; int * notify_handle; void* hdmi_preferred_group; TYPE_4__ dmt_cache; TYPE_3__ cea_cache; int * notify_buffer; int initialised; } ;
struct TYPE_12__ {int state; } ;
struct TYPE_9__ {int notify_data; int (* notify_fn ) (int ,int,int,int) ;} ;
typedef TYPE_5__ TV_DISPLAY_STATE_T ;
typedef TYPE_6__ TVSERVICE_HOST_STATE_T ;
typedef void* SDTV_MODE_T ;
typedef int SDTV_CP_MODE_T ;
typedef void* SDTV_ASPECT_T ;
typedef void* HDMI_RES_GROUP_T ;


 int SDTV_COLOUR_RGB ;
 void* SDTV_COLOUR_UNKNOWN ;
 int SDTV_COLOUR_YPRPB ;
 int SDTV_CP_NONE ;
 void* SDTV_MODE_OFF ;
 int TVSERVICE_MAX_CALLBACKS ;
 int VCHI_FLAGS_NONE ;
 int VCOS_FUNCTION ;
 scalar_t__ VCOS_SUCCESS ;
 int VC_TV_GET_DISPLAY_STATE ;
 int VC_VTOH32 (int ) ;
 int stub1 (int ,int,int,int) ;
 scalar_t__ tvservice_lock_obtain () ;
 int tvservice_lock_release () ;
 int tvservice_notify_available_event ;
 scalar_t__ tvservice_send_command_reply (int ,int *,int ,TYPE_5__*,int) ;
 int vc_tv_notification_name (int) ;
 scalar_t__ vchi_msg_dequeue (int ,int *,int,int*,int ) ;
 int vchi_service_release (int ) ;
 int vchi_service_use (int ) ;
 int vcos_assert (int) ;
 scalar_t__ vcos_event_wait (int *) ;
 int vcos_log_info (char*,int ) ;
 int vcos_log_trace (char*,...) ;

__attribute__((used)) static void *tvservice_notify_func(void *arg) {
   int32_t success;
   TVSERVICE_HOST_STATE_T *state = (TVSERVICE_HOST_STATE_T *) arg;
   TV_DISPLAY_STATE_T tvstate;

   vcos_log_trace("TV service async thread started");

   success = tvservice_send_command_reply( VC_TV_GET_DISPLAY_STATE, ((void*)0), 0, &tvstate, sizeof(TV_DISPLAY_STATE_T));
   if (success != 0)
      return 0;
   if (tvstate.state & 141)
   {

      if (tvstate.state & (135 | 140))
      {

         vchi_service_use(state->notify_handle[0]);
      }
   }

   if (tvstate.state & (141|134))
      tvstate.state &= ~(135 | 140);

   while(1) {
      VCOS_STATUS_T status = vcos_event_wait(&tvservice_notify_available_event);
      if(status != VCOS_SUCCESS || !state->initialised || state->to_exit)
         break;

      do {
         uint32_t reason, param1, param2;

         success = vchi_msg_dequeue( state->notify_handle[0], state->notify_buffer, sizeof(state->notify_buffer), &state->notify_length, VCHI_FLAGS_NONE );
         if(success != 0 || state->notify_length < sizeof(uint32_t)*3 ) {
            vcos_assert(state->notify_length == sizeof(uint32_t)*3);
            break;
         }

         if(tvservice_lock_obtain() != 0)
            break;



         reason = VC_VTOH32(state->notify_buffer[0]), param1 = VC_VTOH32(state->notify_buffer[1]), param2 = VC_VTOH32(state->notify_buffer[2]);
         vcos_log_trace("[%s] %s %d %d", VCOS_FUNCTION, vc_tv_notification_name(reason),
                        param1, param2);
         switch(reason) {
         case 134:
            if(tvstate.state & (135|140)) {
               state->copy_protect = 0;
               if((tvstate.state & 141) == 0) {
                  vchi_service_release(state->notify_handle[0]);
               }
            }
            tvstate.state &= ~(135|140|141|139);
            tvstate.state |= (134 | 136);
            vcos_log_trace("[%s] invalidating caches", VCOS_FUNCTION);
            state->cea_cache.is_valid = state->cea_cache.num_modes = 0;
            state->dmt_cache.is_valid = state->dmt_cache.num_modes = 0;
            break;

         case 141:
            if(tvstate.state & (135|140)) {
               state->copy_protect = 0;
               vchi_service_release(state->notify_handle[0]);
            }
            tvstate.state &= ~(135|140|134|139);
            tvstate.state |= 141;
            state->hdmi_preferred_group = (HDMI_RES_GROUP_T) param1;
            state->hdmi_preferred_mode = param2;
            break;

         case 140:
            if(tvstate.state & (141|134)) {
               vchi_service_use(state->notify_handle[0]);
            }
            tvstate.state &= ~(135|141|134);
            tvstate.state |= 140;
            state->hdmi_current_group = (HDMI_RES_GROUP_T) param1;
            state->hdmi_current_mode = param2;
            break;

         case 135:
            if(tvstate.state & (141|134)) {
               vchi_service_use(state->notify_handle[0]);
            }
            tvstate.state &= ~(140|141|134);
            tvstate.state |= 135;
            state->hdmi_current_group = (HDMI_RES_GROUP_T) param1;
            state->hdmi_current_mode = param2;
            break;

         case 136:
            tvstate.state &= ~139;
            tvstate.state |= 136;
            state->copy_protect = 0;

            break;

         case 139:
            tvstate.state &= ~136;
            tvstate.state |= 139;
            state->copy_protect = 1;
            break;

         case 138:
         case 137:

            break;

         case 128:
            if(tvstate.state & (129 | 130)) {
               state->copy_protect = 0;
            }
            tvstate.state &= ~(133 | 129 | 130);
            tvstate.state |= (128 | 131);
            state->sdtv_current_mode = SDTV_MODE_OFF;
            break;

         case 133:
            tvstate.state &= ~(128 | 129 | 130);
            tvstate.state |= 133;
            state->sdtv_current_mode = SDTV_MODE_OFF;
            break;

         case 130:
            tvstate.state &= ~(128 | 133 | 129);
            tvstate.state |= 130;
            state->sdtv_current_mode = (SDTV_MODE_T) param1;
            state->sdtv_options.aspect = (SDTV_ASPECT_T) param2;
            if(param1 & SDTV_COLOUR_RGB) {
               state->sdtv_current_colour = SDTV_COLOUR_RGB;
            } else if(param1 & SDTV_COLOUR_YPRPB) {
               state->sdtv_current_colour = SDTV_COLOUR_YPRPB;
            } else {
               state->sdtv_current_colour = SDTV_COLOUR_UNKNOWN;
            }
            break;

         case 129:
            tvstate.state &= ~(128 | 133 | 130);
            tvstate.state |= 129;
            state->sdtv_current_mode = (SDTV_MODE_T) param1;
            state->sdtv_options.aspect = (SDTV_ASPECT_T) param2;
            if(param1 & SDTV_COLOUR_RGB) {
               state->sdtv_current_colour = SDTV_COLOUR_RGB;
            } else if(param1 & SDTV_COLOUR_YPRPB) {
               state->sdtv_current_colour = SDTV_COLOUR_YPRPB;
            } else {
               state->sdtv_current_colour = SDTV_COLOUR_UNKNOWN;
            }
            break;

         case 131:
            tvstate.state &= ~132;
            tvstate.state |= 131;
            state->copy_protect = 0;
            state->sdtv_current_cp_mode = SDTV_CP_NONE;
            break;

         case 132:
            tvstate.state &= ~131;
            tvstate.state |= 132;
            state->copy_protect = 1;
            state->sdtv_current_cp_mode = (SDTV_CP_MODE_T) param1;
            break;
         }

         tvservice_lock_release();


         uint32_t i, called = 0;
         for(i = 0; i < TVSERVICE_MAX_CALLBACKS; i++)
         {
            if(state->callbacks[i].notify_fn != ((void*)0))
            {
               called++;
               state->callbacks[i].notify_fn
                  (state->callbacks[i].notify_data, reason, param1, param2);
            }
         }
         if(called == 0) {
            vcos_log_info("TV service: No callback handler specified, callback [%s] swallowed",
                          vc_tv_notification_name(reason));
         }
      } while(success == 0 && state->notify_length >= sizeof(uint32_t)*3);
   }

   if(state->to_exit)
      vcos_log_trace("TV service async thread exiting");

   return 0;
}
