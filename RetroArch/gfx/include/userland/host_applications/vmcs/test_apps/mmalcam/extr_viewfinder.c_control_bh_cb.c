
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ cmd; int length; scalar_t__ data; } ;
struct TYPE_9__ {scalar_t__ size; int id; } ;
struct TYPE_12__ {TYPE_1__ hdr; } ;
struct TYPE_11__ {int status; } ;
struct TYPE_10__ {int value; } ;
typedef int MMAL_PORT_T ;
typedef TYPE_2__ MMAL_PARAMETER_UINT32_T ;
typedef TYPE_3__ MMAL_PARAMETER_FOCUS_STATUS_T ;
typedef TYPE_4__ MMAL_EVENT_PARAMETER_CHANGED_T ;
typedef TYPE_5__ MMAL_BUFFER_HEADER_T ;


 int LOG_DEBUG (char*,int *,TYPE_5__*,scalar_t__) ;
 int LOG_ERROR (char*,scalar_t__) ;
 int LOG_INFO (char*,int ) ;
 int MMAL_CAM_AUTOFOCUS_COMPLETE ;
 scalar_t__ MMAL_EVENT_PARAMETER_CHANGED ;


 int VCOS_OR ;
 int events ;
 int mmal_buffer_header_release (TYPE_5__*) ;
 int vcos_assert (int) ;
 int vcos_event_flags_set (int *,int ,int ) ;

__attribute__((used)) static void control_bh_cb(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   LOG_DEBUG("control_bh_cb %p,%p (cmd=0x%08x)", port, buffer, buffer->cmd);
   if (buffer->cmd == MMAL_EVENT_PARAMETER_CHANGED)
   {
      MMAL_EVENT_PARAMETER_CHANGED_T *param = (MMAL_EVENT_PARAMETER_CHANGED_T *)buffer->data;

      vcos_assert(buffer->length >= sizeof(MMAL_EVENT_PARAMETER_CHANGED_T));
      vcos_assert(buffer->length == param->hdr.size);
      switch (param->hdr.id)
      {
         case 128:
            vcos_assert(param->hdr.size == sizeof(MMAL_PARAMETER_FOCUS_STATUS_T));
            {
               MMAL_PARAMETER_FOCUS_STATUS_T *focus_status = (MMAL_PARAMETER_FOCUS_STATUS_T *)param;
               LOG_INFO("Focus status: %d", focus_status->status);
               vcos_event_flags_set(&events, MMAL_CAM_AUTOFOCUS_COMPLETE, VCOS_OR);
            }
            break;
         case 129:
            vcos_assert(param->hdr.size == sizeof(MMAL_PARAMETER_UINT32_T));
            {
               MMAL_PARAMETER_UINT32_T *camera_num = (MMAL_PARAMETER_UINT32_T *)param;
               LOG_INFO("Camera number: %d", camera_num->value);
            }
            break;
         default:
            LOG_ERROR("Unexpected changed event for parameter 0x%08x", param->hdr.id);
      }
   }
   else
   {
      LOG_ERROR("Unexpected event, 0x%08x", buffer->cmd);
   }
   mmal_buffer_header_release(buffer);
}
