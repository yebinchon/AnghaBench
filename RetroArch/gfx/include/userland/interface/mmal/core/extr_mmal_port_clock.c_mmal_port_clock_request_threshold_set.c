
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
typedef TYPE_3__ MMAL_PORT_T ;
typedef int MMAL_CLOCK_REQUEST_THRESHOLD_T ;


 scalar_t__ MMAL_SUCCESS ;
 scalar_t__ mmal_clock_request_threshold_set (int ,int const*) ;
 scalar_t__ mmal_port_clock_forward_request_threshold (TYPE_3__*,int const*) ;

MMAL_STATUS_T mmal_port_clock_request_threshold_set(MMAL_PORT_T *port,
                                                    const MMAL_CLOCK_REQUEST_THRESHOLD_T *threshold)
{
   MMAL_STATUS_T status;

   status = mmal_clock_request_threshold_set(port->priv->clock->clock, threshold);
   if (status != MMAL_SUCCESS)
      return status;

   if (port->priv->clock->is_reference)
      status = mmal_port_clock_forward_request_threshold(port, threshold);

   return status;
}
