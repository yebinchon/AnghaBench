
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {TYPE_2__* component; int name; } ;
struct TYPE_14__ {TYPE_1__* priv; } ;
struct TYPE_13__ {int module; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_PORT_T ;


 int LOG_TRACE (char*,int ,TYPE_3__*,int ,TYPE_3__*) ;
 int MMAL_EINVAL ;
 TYPE_3__* find_port_from_graph (int ,TYPE_3__*) ;
 int mmal_port_connect (TYPE_3__*,TYPE_3__*) ;
 int mmal_port_disconnect (TYPE_3__*) ;

__attribute__((used)) static MMAL_STATUS_T graph_port_connect(MMAL_PORT_T *graph_port, MMAL_PORT_T *other_port)
{
   MMAL_PORT_T *port;

   LOG_TRACE("%s(%p) %s(%p)", graph_port->name, graph_port, other_port->name, other_port);

   port = find_port_from_graph(graph_port->component->priv->module, graph_port);
   if (!port)
      return MMAL_EINVAL;


   return other_port ? mmal_port_connect(port, other_port) : mmal_port_disconnect(port);
}
