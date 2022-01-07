
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_12__ ;
typedef struct TYPE_26__ TYPE_11__ ;
typedef struct TYPE_25__ TYPE_10__ ;


struct TYPE_36__ {int value; } ;
struct TYPE_35__ {int value; } ;
struct TYPE_34__ {int id; } ;
struct TYPE_33__ {int value; } ;
struct TYPE_32__ {int value; } ;
struct TYPE_31__ {TYPE_3__* priv; } ;
struct TYPE_30__ {TYPE_2__* clock; } ;
struct TYPE_29__ {int (* event_cb ) (TYPE_4__*,TYPE_12__*) ;int buffer_info_reporting; } ;
struct TYPE_28__ {int request_threshold; int discont_threshold; int update_threshold; int media_time; int scale; int enable; } ;
struct TYPE_27__ {TYPE_1__ data; int id; } ;
struct TYPE_26__ {int enable; } ;
struct TYPE_25__ {int value; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_4__ MMAL_PORT_T ;
typedef TYPE_5__ MMAL_PARAMETER_RATIONAL_T ;
typedef TYPE_6__ MMAL_PARAMETER_INT64_T ;
typedef TYPE_7__ MMAL_PARAMETER_HEADER_T ;
typedef TYPE_8__ MMAL_PARAMETER_CLOCK_UPDATE_THRESHOLD_T ;
typedef TYPE_9__ MMAL_PARAMETER_CLOCK_REQUEST_THRESHOLD_T ;
typedef TYPE_10__ MMAL_PARAMETER_CLOCK_DISCONT_THRESHOLD_T ;
typedef TYPE_11__ MMAL_PARAMETER_BOOLEAN_T ;
typedef TYPE_12__ MMAL_CLOCK_EVENT_T ;


 int LOG_ERROR (char*,int) ;
 int MMAL_CLOCK_EVENT_ACTIVE ;
 int MMAL_CLOCK_EVENT_DISCONT_THRESHOLD ;
 TYPE_12__ MMAL_CLOCK_EVENT_INIT (int ) ;
 int MMAL_CLOCK_EVENT_INVALID ;
 int MMAL_CLOCK_EVENT_REFERENCE ;
 int MMAL_CLOCK_EVENT_REQUEST_THRESHOLD ;
 int MMAL_CLOCK_EVENT_SCALE ;
 int MMAL_CLOCK_EVENT_TIME ;
 int MMAL_CLOCK_EVENT_UPDATE_THRESHOLD ;
 scalar_t__ MMAL_ENOSYS ;
 scalar_t__ MMAL_SUCCESS ;
 scalar_t__ mmal_port_clock_active_set (TYPE_4__*,int ) ;
 scalar_t__ mmal_port_clock_discont_threshold_set (TYPE_4__*,int *) ;
 scalar_t__ mmal_port_clock_media_time_set (TYPE_4__*,int ) ;
 scalar_t__ mmal_port_clock_reference_set (TYPE_4__*,int ) ;
 scalar_t__ mmal_port_clock_request_threshold_set (TYPE_4__*,int *) ;
 scalar_t__ mmal_port_clock_scale_set (TYPE_4__*,int ) ;
 scalar_t__ mmal_port_clock_update_threshold_set (TYPE_4__*,int *) ;
 int stub1 (TYPE_4__*,TYPE_12__*) ;

__attribute__((used)) static MMAL_STATUS_T mmal_port_clock_parameter_set(MMAL_PORT_T *port, const MMAL_PARAMETER_HEADER_T *param)
{
   MMAL_STATUS_T status = MMAL_SUCCESS;
   MMAL_CLOCK_EVENT_T event = MMAL_CLOCK_EVENT_INIT(MMAL_CLOCK_EVENT_INVALID);

   switch (param->id)
   {
      case 132:
      {
         const MMAL_PARAMETER_BOOLEAN_T *p = (const MMAL_PARAMETER_BOOLEAN_T*)param;
         status = mmal_port_clock_reference_set(port, p->enable);
         event.id = MMAL_CLOCK_EVENT_REFERENCE;
         event.data.enable = p->enable;
      }
      break;
      case 135:
      {
         const MMAL_PARAMETER_BOOLEAN_T *p = (const MMAL_PARAMETER_BOOLEAN_T*)param;
         status = mmal_port_clock_active_set(port, p->enable);
         event.id = MMAL_CLOCK_EVENT_ACTIVE;
         event.data.enable = p->enable;
      }
      break;
      case 130:
      {
         const MMAL_PARAMETER_RATIONAL_T *p = (const MMAL_PARAMETER_RATIONAL_T*)param;
         status = mmal_port_clock_scale_set(port, p->value);
         event.id = MMAL_CLOCK_EVENT_SCALE;
         event.data.scale = p->value;
      }
      break;
      case 129:
      {
         const MMAL_PARAMETER_INT64_T *p = (const MMAL_PARAMETER_INT64_T*)param;
         status = mmal_port_clock_media_time_set(port, p->value);
         event.id = MMAL_CLOCK_EVENT_TIME;
         event.data.media_time = p->value;
      }
      break;
      case 128:
      {
         const MMAL_PARAMETER_CLOCK_UPDATE_THRESHOLD_T *p = (const MMAL_PARAMETER_CLOCK_UPDATE_THRESHOLD_T *)param;
         status = mmal_port_clock_update_threshold_set(port, &p->value);
         event.id = MMAL_CLOCK_EVENT_UPDATE_THRESHOLD;
         event.data.update_threshold = p->value;
      }
      break;
      case 134:
      {
         const MMAL_PARAMETER_CLOCK_DISCONT_THRESHOLD_T *p = (const MMAL_PARAMETER_CLOCK_DISCONT_THRESHOLD_T *)param;
         status = mmal_port_clock_discont_threshold_set(port, &p->value);
         event.id = MMAL_CLOCK_EVENT_DISCONT_THRESHOLD;
         event.data.discont_threshold = p->value;
      }
      break;
      case 131:
      {
         const MMAL_PARAMETER_CLOCK_REQUEST_THRESHOLD_T *p = (const MMAL_PARAMETER_CLOCK_REQUEST_THRESHOLD_T *)param;
         status = mmal_port_clock_request_threshold_set(port, &p->value);
         event.id = MMAL_CLOCK_EVENT_REQUEST_THRESHOLD;
         event.data.request_threshold = p->value;
      }
      break;
      case 133:
      {
         const MMAL_PARAMETER_BOOLEAN_T *p = (const MMAL_PARAMETER_BOOLEAN_T*)param;
         port->priv->clock->buffer_info_reporting = p->enable;
         return MMAL_SUCCESS;
      }
      default:
         LOG_ERROR("unsupported clock parameter 0x%x", param->id);
         return MMAL_ENOSYS;
   }


   if (port->priv->clock->event_cb && status == MMAL_SUCCESS)
      port->priv->clock->event_cb(port, &event);

   return status;
}
