
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* priv; } ;
struct TYPE_6__ {TYPE_1__* clock; } ;
struct TYPE_5__ {int clock; int queue; } ;
typedef TYPE_3__ MMAL_PORT_T ;


 int mmal_clock_destroy (int ) ;
 int mmal_queue_destroy (int ) ;

__attribute__((used)) static void mmal_port_clock_teardown(MMAL_PORT_T *port)
{
   if (!port)
      return;
   mmal_queue_destroy(port->priv->clock->queue);
   mmal_clock_destroy(port->priv->clock->clock);
}
