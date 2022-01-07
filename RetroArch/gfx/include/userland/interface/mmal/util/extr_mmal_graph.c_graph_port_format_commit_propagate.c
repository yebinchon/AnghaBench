
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {unsigned int output_num; TYPE_2__** output; } ;
struct TYPE_16__ {unsigned int connection_num; TYPE_1__** connection; } ;
struct TYPE_15__ {scalar_t__ type; int format; scalar_t__ is_enabled; int name; TYPE_4__* component; } ;
struct TYPE_14__ {TYPE_2__* out; TYPE_2__* in; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_PORT_T ;
typedef TYPE_3__ MMAL_GRAPH_PRIVATE_T ;
typedef TYPE_4__ MMAL_COMPONENT_T ;


 int LOG_TRACE (char*,TYPE_3__*,int ,TYPE_2__*) ;
 scalar_t__ MMAL_PORT_TYPE_CLOCK ;
 scalar_t__ MMAL_PORT_TYPE_OUTPUT ;
 scalar_t__ MMAL_SUCCESS ;
 int graph_component_topology_ports_linked (TYPE_3__*,TYPE_2__*,TYPE_2__*) ;
 scalar_t__ mmal_format_full_copy (int ,int ) ;
 int mmal_log_dump_port (TYPE_2__*) ;
 scalar_t__ mmal_port_format_commit (TYPE_2__*) ;

__attribute__((used)) static MMAL_STATUS_T graph_port_format_commit_propagate(MMAL_GRAPH_PRIVATE_T *graph,
   MMAL_PORT_T *port)
{
   MMAL_COMPONENT_T *component = port->component;
   MMAL_STATUS_T status = MMAL_SUCCESS;
   unsigned int i, j;

   LOG_TRACE("graph: %p, port %s(%p)", graph, port->name, port);

   if (port->type == MMAL_PORT_TYPE_OUTPUT || port->type == MMAL_PORT_TYPE_CLOCK)
      return MMAL_SUCCESS;



   for (i = 0; i < component->output_num; i++)
   {
      MMAL_PORT_T *in, *out;

      if (component->output[i]->is_enabled)
         continue;


      for (j = 0; j < graph->connection_num; j++)
         if (graph->connection[j]->out == component->output[i])
            break;

      if (j == graph->connection_num)
         continue;

      if (!graph_component_topology_ports_linked(graph, port, component->output[i]))
         continue;

      in = graph->connection[j]->in;
      out = graph->connection[j]->out;


      status = mmal_format_full_copy(in->format, out->format);
      if (status != MMAL_SUCCESS)
         break;
      status = mmal_port_format_commit(in);
      if (status != MMAL_SUCCESS)
         break;

      mmal_log_dump_port(out);
      mmal_log_dump_port(in);

      status = graph_port_format_commit_propagate(graph, in);
      if (status != MMAL_SUCCESS)
         break;
   }

   return status;
}
