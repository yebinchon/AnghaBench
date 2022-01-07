
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* priv; } ;
struct TYPE_6__ {TYPE_1__* core; } ;
struct TYPE_5__ {int connected_port; } ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef int MMAL_BOOL_T ;



MMAL_BOOL_T mmal_port_is_connected(MMAL_PORT_T *port)
{
   return !!port->priv->core->connected_port;
}
