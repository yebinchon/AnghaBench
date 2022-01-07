
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int enable; } ;
struct TYPE_5__ {TYPE_1__ data; int magic; int id; } ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_PORT_T ;
typedef TYPE_2__ MMAL_CLOCK_EVENT_T ;
typedef int MMAL_BOOL_T ;


 int MMAL_CLOCK_EVENT_ACTIVE ;
 int MMAL_CLOCK_EVENT_MAGIC ;
 int mmal_port_clock_forward_event (int *,TYPE_2__*) ;

__attribute__((used)) static MMAL_STATUS_T mmal_port_clock_forward_active_state(MMAL_PORT_T *port, MMAL_BOOL_T active)
{
   MMAL_CLOCK_EVENT_T event;

   event.id = MMAL_CLOCK_EVENT_ACTIVE;
   event.magic = MMAL_CLOCK_EVENT_MAGIC;
   event.data.enable = active;

   return mmal_port_clock_forward_event(port, &event);
}
