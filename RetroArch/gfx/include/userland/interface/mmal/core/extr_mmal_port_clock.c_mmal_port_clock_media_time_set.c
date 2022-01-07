
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_8__ {TYPE_2__* priv; } ;
struct TYPE_7__ {TYPE_1__* clock; } ;
struct TYPE_6__ {scalar_t__ is_reference; int clock; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_PORT_T ;


 int LOG_DEBUG (char*) ;
 scalar_t__ MMAL_SUCCESS ;
 scalar_t__ mmal_clock_media_time_set (int ,int ) ;
 scalar_t__ mmal_port_clock_forward_media_time (TYPE_3__*,int ) ;

MMAL_STATUS_T mmal_port_clock_media_time_set(MMAL_PORT_T *port, int64_t media_time)
{
   MMAL_STATUS_T status;

   status = mmal_clock_media_time_set(port->priv->clock->clock, media_time);
   if (status != MMAL_SUCCESS)
   {
      LOG_DEBUG("clock media-time update ignored");
      return status;
   }

   if (port->priv->clock->is_reference)
      status = mmal_port_clock_forward_media_time(port, media_time);

   return status;
}
