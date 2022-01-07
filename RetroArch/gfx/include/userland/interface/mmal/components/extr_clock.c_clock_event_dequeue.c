
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ length; } ;
struct TYPE_13__ {TYPE_7__* buffer; } ;
struct TYPE_15__ {TYPE_4__ event; int port; int link; } ;
struct TYPE_14__ {TYPE_3__* priv; } ;
struct TYPE_12__ {TYPE_2__* module; } ;
struct TYPE_10__ {int free; int queue; } ;
struct TYPE_11__ {TYPE_1__ events; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_5__ MMAL_COMPONENT_T ;
typedef TYPE_6__ CLOCK_PORT_EVENT_T ;


 int MMAL_EINVAL ;
 int MMAL_SUCCESS ;
 scalar_t__ mmal_list_pop_front (int ) ;
 int mmal_list_push_back (int ,int *) ;
 int mmal_port_buffer_header_callback (int ,TYPE_7__*) ;

__attribute__((used)) static MMAL_STATUS_T clock_event_dequeue(MMAL_COMPONENT_T *component, CLOCK_PORT_EVENT_T *port_event)
{
   CLOCK_PORT_EVENT_T *slot = (CLOCK_PORT_EVENT_T*)mmal_list_pop_front(component->priv->module->events.queue);
   if (!slot)
      return MMAL_EINVAL;

   port_event->port = slot->port;
   port_event->event = slot->event;
   mmal_list_push_back(component->priv->module->events.free, &slot->link);

   if (port_event->event.buffer)
   {
      port_event->event.buffer->length = 0;
      mmal_port_buffer_header_callback(port_event->port, port_event->event.buffer);
   }

   return MMAL_SUCCESS;
}
