
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* priv; } ;
struct TYPE_6__ {TYPE_1__* clock; } ;
struct TYPE_5__ {int clock; } ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef int MMAL_BOOL_T ;


 int mmal_clock_is_active (int ) ;

MMAL_BOOL_T mmal_port_clock_active_get(MMAL_PORT_T *port)
{
   return mmal_clock_is_active(port->priv->clock->clock);
}
