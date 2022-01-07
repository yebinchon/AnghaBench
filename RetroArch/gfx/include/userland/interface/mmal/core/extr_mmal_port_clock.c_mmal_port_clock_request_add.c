
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_7__ {TYPE_2__* priv; } ;
struct TYPE_6__ {TYPE_1__* clock; } ;
struct TYPE_5__ {int clock; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef scalar_t__ MMAL_PORT_CLOCK_REQUEST_CB ;
typedef int MMAL_CLOCK_VOID_FP ;


 int mmal_clock_request_add (int ,int ,int ,void*,int ) ;
 int mmal_port_clock_request_cb ;

MMAL_STATUS_T mmal_port_clock_request_add(MMAL_PORT_T *port, int64_t media_time,
      MMAL_PORT_CLOCK_REQUEST_CB cb, void *cb_data)
{
   return mmal_clock_request_add(port->priv->clock->clock, media_time,
                                 mmal_port_clock_request_cb, cb_data, (MMAL_CLOCK_VOID_FP)cb);
}
