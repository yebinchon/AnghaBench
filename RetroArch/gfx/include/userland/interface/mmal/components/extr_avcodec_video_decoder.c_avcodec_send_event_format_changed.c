
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;


struct TYPE_23__ {scalar_t__ status; int output_needs_configuring; TYPE_4__* codec_context; } ;
struct TYPE_22__ {TYPE_1__* priv; } ;
struct TYPE_21__ {int buffer_size_min; int buffer_size_recommended; int buffer_num_recommended; int buffer_num_min; TYPE_11__* format; } ;
struct TYPE_20__ {int buffer_num_recommended; int buffer_num_min; int format; } ;
struct TYPE_19__ {int width; int height; int pix_fmt; } ;
struct TYPE_17__ {int width; int height; } ;
struct TYPE_18__ {TYPE_2__ video; } ;
struct TYPE_16__ {TYPE_8__* module; } ;
struct TYPE_15__ {int encoding; TYPE_3__* es; } ;
typedef TYPE_5__ MMAL_PORT_T ;
typedef TYPE_6__ MMAL_EVENT_FORMAT_CHANGED_T ;
typedef TYPE_7__ MMAL_COMPONENT_T ;
typedef TYPE_8__ MMAL_COMPONENT_MODULE_T ;
typedef int MMAL_BUFFER_HEADER_T ;


 int LOG_ERROR (char*) ;
 int MMAL_EVENT_FORMAT_CHANGED ;
 scalar_t__ MMAL_SUCCESS ;
 TYPE_6__* mmal_event_format_changed_get (int *) ;
 int mmal_format_copy (TYPE_11__*,int ) ;
 scalar_t__ mmal_port_event_get (TYPE_5__*,int **,int ) ;
 int mmal_port_event_send (TYPE_5__*,int *) ;
 int pixfmt_to_encoding (int ) ;

__attribute__((used)) static void avcodec_send_event_format_changed(MMAL_COMPONENT_T *component, MMAL_PORT_T *port)
{
   MMAL_COMPONENT_MODULE_T *module = component->priv->module;
   MMAL_BUFFER_HEADER_T *buffer = ((void*)0);
   MMAL_EVENT_FORMAT_CHANGED_T *event;


   module->status = mmal_port_event_get(port, &buffer, MMAL_EVENT_FORMAT_CHANGED);
   if (module->status != MMAL_SUCCESS)
   {
      LOG_ERROR("unable to get an event buffer");
      return;
   }
   event = mmal_event_format_changed_get(buffer);


   mmal_format_copy(event->format, port->format);
   event->format->es->video.width = module->codec_context->width;
   event->format->es->video.height = module->codec_context->height;
   event->format->encoding = pixfmt_to_encoding(module->codec_context->pix_fmt);


   event->buffer_num_min = port->buffer_num_min;
   event->buffer_size_min = module->codec_context->width * module->codec_context->height * 2;
   event->buffer_size_recommended = event->buffer_size_min;
   event->buffer_num_recommended = port->buffer_num_recommended;

   module->output_needs_configuring = 1;
   mmal_port_event_send(port, buffer);
}
