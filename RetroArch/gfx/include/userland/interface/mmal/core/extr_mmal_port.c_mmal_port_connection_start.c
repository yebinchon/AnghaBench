
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ type; TYPE_2__* priv; } ;
struct TYPE_10__ {TYPE_1__* core; } ;
struct TYPE_9__ {int * pool_for_connection; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef int MMAL_POOL_T ;


 scalar_t__ MMAL_PORT_TYPE_CLOCK ;
 scalar_t__ MMAL_PORT_TYPE_INPUT ;
 scalar_t__ MMAL_PORT_TYPE_OUTPUT ;
 int mmal_port_populate_clock_ports (TYPE_3__*,TYPE_3__*,int *) ;
 int mmal_port_populate_from_pool (TYPE_3__*,int *) ;

__attribute__((used)) static MMAL_STATUS_T mmal_port_connection_start(MMAL_PORT_T *port, MMAL_PORT_T *connected_port)
{
   MMAL_PORT_T *output = port->type == MMAL_PORT_TYPE_OUTPUT ? port : connected_port;
   MMAL_PORT_T *input = connected_port->type == MMAL_PORT_TYPE_INPUT ? connected_port : port;
   MMAL_POOL_T *pool = port->priv->core->pool_for_connection ?
      port->priv->core->pool_for_connection : connected_port->priv->core->pool_for_connection;
   MMAL_STATUS_T status;

   if (output->type == MMAL_PORT_TYPE_CLOCK && input->type == MMAL_PORT_TYPE_CLOCK)
   {


      status = mmal_port_populate_clock_ports(output, input, pool);
   }
   else
   {

      status = mmal_port_populate_from_pool(output, pool);
   }

   return status;
}
