
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* priv; } ;
struct TYPE_7__ {TYPE_1__* core; } ;
struct TYPE_6__ {int * pool_for_connection; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef int MMAL_POOL_T ;


 int MMAL_SUCCESS ;
 int mmal_pool_destroy (int *) ;

__attribute__((used)) static MMAL_STATUS_T mmal_port_connection_disable(MMAL_PORT_T *port, MMAL_PORT_T *connected_port)
{
   MMAL_POOL_T *pool = port->priv->core->pool_for_connection ?
      port->priv->core->pool_for_connection : connected_port->priv->core->pool_for_connection;

   mmal_pool_destroy(pool);
   port->priv->core->pool_for_connection =
      connected_port->priv->core->pool_for_connection = ((void*)0);
   return MMAL_SUCCESS;
}
