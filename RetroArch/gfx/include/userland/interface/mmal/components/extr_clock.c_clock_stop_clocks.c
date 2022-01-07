
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned int clock_num; TYPE_1__** clock; } ;
struct TYPE_6__ {int index; scalar_t__ is_enabled; } ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef TYPE_2__ MMAL_COMPONENT_T ;


 int LOG_TRACE (char*,int ) ;
 int MMAL_FALSE ;
 int mmal_port_clock_active_set (TYPE_1__*,int ) ;
 int mmal_port_clock_request_flush (TYPE_1__*) ;

__attribute__((used)) static void clock_stop_clocks(MMAL_COMPONENT_T *component)
{
   unsigned i;

   for (i = 0; i < component->clock_num; ++i)
   {
      MMAL_PORT_T *port = component->clock[i];
      if (port->is_enabled)
      {
         LOG_TRACE("stopping clock %d", port->index);
         mmal_port_clock_request_flush(port);
         mmal_port_clock_active_set(port, MMAL_FALSE);
      }
   }
}
