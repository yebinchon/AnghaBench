
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ length; scalar_t__ offset; int data; scalar_t__ cmd; } ;
struct TYPE_18__ {TYPE_2__* priv; int name; scalar_t__ index; scalar_t__ type; TYPE_3__* component; } ;
struct TYPE_17__ {int name; } ;
struct TYPE_16__ {TYPE_1__* core; } ;
struct TYPE_15__ {int (* buffer_header_callback ) (TYPE_4__*,TYPE_5__*) ;} ;
typedef TYPE_4__ MMAL_PORT_T ;
typedef TYPE_5__ MMAL_BUFFER_HEADER_T ;


 scalar_t__ IN_TRANSIT_COUNT (TYPE_4__*) ;
 int IN_TRANSIT_DECREMENT (TYPE_4__*) ;
 int LOG_ERROR (char*,int ,int) ;
 int LOG_TRACE (char*,int ,int,int,TYPE_4__*,TYPE_5__*,int,int ,int,int) ;
 scalar_t__ MMAL_COLLECT_PORT_STATS_ENABLED ;
 int MMAL_CORE_STATS_TX ;
 int mmal_port_update_port_stats (TYPE_4__*,int ) ;
 int stub1 (TYPE_4__*,TYPE_5__*) ;
 int vcos_verify (int) ;

void mmal_port_buffer_header_callback(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{







   if (!vcos_verify(IN_TRANSIT_COUNT(port) >= 0))
      LOG_ERROR("%s: buffer headers in transit < 0 (%d)", port->name, (int)IN_TRANSIT_COUNT(port));

   if (MMAL_COLLECT_PORT_STATS_ENABLED)
   {
      mmal_port_update_port_stats(port, MMAL_CORE_STATS_TX);
   }

   port->priv->core->buffer_header_callback(port, buffer);

   IN_TRANSIT_DECREMENT(port);
}
