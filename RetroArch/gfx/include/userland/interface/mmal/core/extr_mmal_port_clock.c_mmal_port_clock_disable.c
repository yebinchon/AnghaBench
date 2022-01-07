
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int clock; } ;
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {TYPE_3__* clock; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef TYPE_3__ MMAL_PORT_CLOCK_T ;


 int MMAL_FALSE ;
 int MMAL_SUCCESS ;
 int mmal_clock_active_set (int ,int ) ;
 scalar_t__ mmal_clock_is_active (int ) ;
 int mmal_port_clock_flush (TYPE_2__*) ;

__attribute__((used)) static MMAL_STATUS_T mmal_port_clock_disable(MMAL_PORT_T *port)
{
   MMAL_PORT_CLOCK_T *priv_clock = port->priv->clock;

   if (mmal_clock_is_active(priv_clock->clock))
      mmal_clock_active_set(priv_clock->clock, MMAL_FALSE);

   mmal_port_clock_flush(port);

   return MMAL_SUCCESS;
}
