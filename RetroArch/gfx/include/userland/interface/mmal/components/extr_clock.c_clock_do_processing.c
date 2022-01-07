
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int buffer; int latency; int request_threshold; int discont_threshold; int update_threshold; int scale; } ;
struct TYPE_5__ {int id; TYPE_2__ data; } ;
struct TYPE_7__ {TYPE_1__ event; int port; } ;
typedef int MMAL_COMPONENT_T ;
typedef int MMAL_BOOL_T ;
typedef TYPE_3__ CLOCK_PORT_EVENT_T ;
 int MMAL_FALSE ;
 scalar_t__ MMAL_SUCCESS ;
 int MMAL_TRUE ;
 scalar_t__ clock_event_dequeue (int *,TYPE_3__*) ;
 int clock_process_discont_threshold_event (int *,int *) ;
 int clock_process_input_buffer_info_event (int *,int ,int *) ;
 int clock_process_latency_event (int *,int *) ;
 int clock_process_request_threshold_event (int *,int *) ;
 int clock_process_scale_event (int *,int ) ;
 int clock_process_update_threshold_event (int *,int *) ;

__attribute__((used)) static MMAL_BOOL_T clock_do_processing(MMAL_COMPONENT_T *component)
{
   CLOCK_PORT_EVENT_T port_event;

   if (clock_event_dequeue(component, &port_event) != MMAL_SUCCESS)
      return MMAL_FALSE;


   switch (port_event.event.id)
   {
   case 129:
      clock_process_scale_event(component, port_event.event.data.scale);
      break;
   case 128:
      clock_process_update_threshold_event(component, &port_event.event.data.update_threshold);
      break;
   case 133:
      clock_process_discont_threshold_event(component, &port_event.event.data.discont_threshold);
      break;
   case 130:
      clock_process_request_threshold_event(component, &port_event.event.data.request_threshold);
      break;
   case 131:
      clock_process_latency_event(component, &port_event.event.data.latency);
      break;
   case 132:
      clock_process_input_buffer_info_event(component, port_event.port, &port_event.event.data.buffer);
      break;
   default:
      break;
   }

   return MMAL_TRUE;
}
