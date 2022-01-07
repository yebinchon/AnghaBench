
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int component; } ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef int MMAL_CLOCK_EVENT_T ;


 int clock_event_queue (int ,TYPE_1__*,int const*) ;

__attribute__((used)) static void clock_event_cb(MMAL_PORT_T *port, const MMAL_CLOCK_EVENT_T *event)
{
   clock_event_queue(port->component, port, event);
}
