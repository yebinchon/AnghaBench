
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ type; int index; TYPE_3__* component; } ;
struct TYPE_9__ {TYPE_2__* priv; } ;
struct TYPE_8__ {TYPE_1__* module; } ;
struct TYPE_7__ {int enabled_flags; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_4__ MMAL_PORT_T ;


 scalar_t__ MMAL_PORT_TYPE_OUTPUT ;
 int splitter_port_flush (TYPE_4__*) ;

__attribute__((used)) static MMAL_STATUS_T splitter_port_disable(MMAL_PORT_T *port)
{
   if (port->type == MMAL_PORT_TYPE_OUTPUT)
      port->component->priv->module->enabled_flags &= ~(1<<port->index);


   return splitter_port_flush(port);
}
