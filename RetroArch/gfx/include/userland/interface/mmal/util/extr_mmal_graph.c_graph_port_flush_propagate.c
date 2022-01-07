
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_17__ {unsigned int port_num; TYPE_10__** port; } ;
struct TYPE_16__ {unsigned int connection_num; TYPE_1__** connection; } ;
struct TYPE_15__ {scalar_t__ type; int name; TYPE_4__* component; } ;
struct TYPE_14__ {TYPE_2__* in; scalar_t__ queue; TYPE_10__* out; } ;
struct TYPE_13__ {scalar_t__ type; int is_enabled; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef TYPE_3__ MMAL_GRAPH_PRIVATE_T ;
typedef TYPE_4__ MMAL_COMPONENT_T ;
typedef int MMAL_BUFFER_HEADER_T ;


 int LOG_TRACE (char*,TYPE_3__*,int ,TYPE_2__*) ;
 scalar_t__ MMAL_PORT_TYPE_OUTPUT ;
 scalar_t__ MMAL_SUCCESS ;
 int graph_component_topology_ports_linked (TYPE_3__*,TYPE_2__*,TYPE_10__*) ;
 int mmal_buffer_header_release (int *) ;
 scalar_t__ mmal_port_flush (TYPE_2__*) ;
 int * mmal_queue_get (scalar_t__) ;

__attribute__((used)) static MMAL_STATUS_T graph_port_flush_propagate(MMAL_GRAPH_PRIVATE_T *graph,
   MMAL_PORT_T *port)
{
   MMAL_COMPONENT_T *component = port->component;
   MMAL_STATUS_T status;
   unsigned int i, j;

   LOG_TRACE("graph: %p, port %s(%p)", graph, port->name, port);

   status = mmal_port_flush(port);
   if (status != MMAL_SUCCESS)
      return status;

   if (port->type == MMAL_PORT_TYPE_OUTPUT)
      return MMAL_SUCCESS;



   for (i = 0; i < component->port_num; i++)
   {
      if (component->port[i]->type != MMAL_PORT_TYPE_OUTPUT)
         continue;
      if (!component->port[i]->is_enabled)
         continue;


      for (j = 0; j < graph->connection_num; j++)
         if (graph->connection[j]->out == component->port[i])
            break;

      if (j == graph->connection_num)
         continue;

      if (!graph_component_topology_ports_linked(graph, port, component->port[i]))
         continue;


      if (graph->connection[j]->queue)
      {
         MMAL_BUFFER_HEADER_T *buffer = mmal_queue_get(graph->connection[j]->queue);
         while(buffer)
         {
            mmal_buffer_header_release(buffer);
            buffer = mmal_queue_get(graph->connection[j]->queue);
         }
      }

      status = graph_port_flush_propagate(graph, graph->connection[j]->in);
      if (status != MMAL_SUCCESS)
         break;
   }

   return status;
}
