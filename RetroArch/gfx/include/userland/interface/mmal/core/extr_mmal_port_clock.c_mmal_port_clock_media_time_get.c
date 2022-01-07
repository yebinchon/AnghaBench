
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
typedef TYPE_3__ MMAL_PORT_T ;


 int mmal_clock_media_time_get (int ) ;

int64_t mmal_port_clock_media_time_get(MMAL_PORT_T *port)
{
   return mmal_clock_media_time_get(port->priv->clock->clock);
}
