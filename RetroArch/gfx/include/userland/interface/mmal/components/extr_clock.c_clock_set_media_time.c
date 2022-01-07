
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int clock_num; TYPE_1__** clock; } ;
struct TYPE_5__ {scalar_t__ is_enabled; } ;
typedef int TIME_T ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef TYPE_2__ MMAL_COMPONENT_T ;


 int mmal_port_clock_media_time_set (TYPE_1__*,int ) ;

__attribute__((used)) static void clock_set_media_time(MMAL_COMPONENT_T *component, TIME_T media_time)
{
   unsigned i;

   for (i = 0; i < component->clock_num; ++i)
   {
      MMAL_PORT_T *port = component->clock[i];
      if (port->is_enabled)
         mmal_port_clock_media_time_set(port, media_time);
   }
}
