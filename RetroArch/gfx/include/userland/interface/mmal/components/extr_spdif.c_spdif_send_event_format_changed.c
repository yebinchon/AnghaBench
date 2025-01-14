
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_18__ ;
typedef struct TYPE_23__ TYPE_12__ ;
typedef struct TYPE_22__ TYPE_11__ ;
typedef struct TYPE_21__ TYPE_10__ ;


struct TYPE_33__ {int buffer_num_recommended; int buffer_size_min; int buffer_size_recommended; int buffer_num_min; TYPE_18__* format; } ;
struct TYPE_32__ {TYPE_7__* priv; int buffer_num_recommended; int buffer_size_min; int buffer_num_min; TYPE_10__* format; } ;
struct TYPE_31__ {TYPE_6__* module; } ;
struct TYPE_30__ {int needs_configuring; } ;
struct TYPE_28__ {int sample_rate; } ;
struct TYPE_29__ {TYPE_4__ audio; } ;
struct TYPE_26__ {int sample_rate; } ;
struct TYPE_27__ {TYPE_2__ audio; } ;
struct TYPE_25__ {TYPE_12__* module; } ;
struct TYPE_24__ {TYPE_3__* es; } ;
struct TYPE_23__ {scalar_t__ status; } ;
struct TYPE_22__ {TYPE_1__* priv; } ;
struct TYPE_21__ {scalar_t__ encoding; TYPE_5__* es; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_8__ MMAL_PORT_T ;
typedef TYPE_9__ MMAL_EVENT_FORMAT_CHANGED_T ;
typedef TYPE_10__ MMAL_ES_FORMAT_T ;
typedef TYPE_11__ MMAL_COMPONENT_T ;
typedef TYPE_12__ MMAL_COMPONENT_MODULE_T ;
typedef int MMAL_BUFFER_HEADER_T ;


 int LOG_ERROR (char*) ;
 scalar_t__ MMAL_ENCODING_PCM_SIGNED ;
 int MMAL_EVENT_FORMAT_CHANGED ;
 scalar_t__ MMAL_SUCCESS ;
 TYPE_9__* mmal_event_format_changed_get (int *) ;
 int mmal_format_copy (TYPE_18__*,TYPE_10__*) ;
 scalar_t__ mmal_port_event_get (TYPE_8__*,int **,int ) ;
 int mmal_port_event_send (TYPE_8__*,int *) ;

__attribute__((used)) static MMAL_STATUS_T spdif_send_event_format_changed(MMAL_COMPONENT_T *component, MMAL_PORT_T *port,
   MMAL_ES_FORMAT_T *format)
{
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   MMAL_BUFFER_HEADER_T *buffer = ((void*)0);
   MMAL_EVENT_FORMAT_CHANGED_T *event;


   module->status = mmal_port_event_get(port, &buffer, MMAL_EVENT_FORMAT_CHANGED);
   if (module->status != MMAL_SUCCESS)
   {
      LOG_ERROR("unable to get an event buffer");
      return module->status;
   }

   event = mmal_event_format_changed_get(buffer);


   if (port->format->encoding == MMAL_ENCODING_PCM_SIGNED)
      mmal_format_copy(event->format, port->format);
   else
      mmal_format_copy(event->format, format);

   event->format->es->audio.sample_rate = format->es->audio.sample_rate;


   event->buffer_num_min = port->buffer_num_min;
   event->buffer_size_min = port->buffer_size_min;
   event->buffer_size_recommended = event->buffer_size_min;
   event->buffer_num_recommended = port->buffer_num_recommended;

   port->priv->module->needs_configuring = 1;
   mmal_port_event_send(port, buffer);
   return MMAL_SUCCESS;
}
