
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int buffer_alignment_min; int buffer_size_recommended; int buffer_size_min; int buffer_num_recommended; int buffer_num_min; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef int MMAL_GRAPH_PRIVATE_T ;


 int LOG_ERROR (char*,TYPE_1__*) ;
 int MMAL_EINVAL ;
 int MMAL_SUCCESS ;
 TYPE_1__* find_port_from_graph (int *,TYPE_1__*) ;

__attribute__((used)) static MMAL_STATUS_T graph_port_update_requirements(MMAL_GRAPH_PRIVATE_T *graph,
   MMAL_PORT_T *graph_port)
{
   MMAL_PORT_T *port;

   port = find_port_from_graph(graph, graph_port);
   if (!port)
   {
      LOG_ERROR("could not find matching port for %p", graph_port);
      return MMAL_EINVAL;
   }

   graph_port->buffer_num_min = port->buffer_num_min;
   graph_port->buffer_num_recommended = port->buffer_num_recommended;
   graph_port->buffer_size_min = port->buffer_size_min;
   graph_port->buffer_size_recommended = port->buffer_size_recommended;
   graph_port->buffer_alignment_min = port->buffer_alignment_min;
   return MMAL_SUCCESS;
}
