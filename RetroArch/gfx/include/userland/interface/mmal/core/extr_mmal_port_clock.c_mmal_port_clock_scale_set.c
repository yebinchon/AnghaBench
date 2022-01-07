
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* priv; } ;
struct TYPE_7__ {TYPE_1__* clock; } ;
struct TYPE_6__ {scalar_t__ is_reference; int clock; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_RATIONAL_T ;
typedef TYPE_3__ MMAL_PORT_T ;


 scalar_t__ MMAL_SUCCESS ;
 scalar_t__ mmal_clock_scale_set (int ,int ) ;
 scalar_t__ mmal_port_clock_forward_scale (TYPE_3__*,int ) ;

MMAL_STATUS_T mmal_port_clock_scale_set(MMAL_PORT_T *port, MMAL_RATIONAL_T scale)
{
   MMAL_STATUS_T status;

   status = mmal_clock_scale_set(port->priv->clock->clock, scale);
   if (status != MMAL_SUCCESS)
      return status;

   if (port->priv->clock->is_reference)
      status = mmal_port_clock_forward_scale(port, scale);

   return status;
}
