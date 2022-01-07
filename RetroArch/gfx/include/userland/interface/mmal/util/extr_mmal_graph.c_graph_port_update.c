
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int buffer_size; int buffer_num; int capabilities; int buffer_alignment_min; int buffer_size_recommended; int buffer_size_min; int buffer_num_recommended; int buffer_num_min; struct TYPE_6__* name; int format; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef int MMAL_GRAPH_PRIVATE_T ;
typedef scalar_t__ MMAL_BOOL_T ;


 int LOG_ERROR (char*,TYPE_1__*) ;
 scalar_t__ MMAL_EINVAL ;
 scalar_t__ MMAL_SUCCESS ;
 TYPE_1__* find_port_from_graph (int *,TYPE_1__*) ;
 scalar_t__ mmal_format_full_copy (int ,int ) ;

__attribute__((used)) static MMAL_STATUS_T graph_port_update(MMAL_GRAPH_PRIVATE_T *graph,
   MMAL_PORT_T *graph_port, MMAL_BOOL_T init)
{
   MMAL_STATUS_T status;
   MMAL_PORT_T *port;

   port = find_port_from_graph(graph, graph_port);
   if (!port)
   {
      LOG_ERROR("could not find matching port for %p", graph_port);
      return MMAL_EINVAL;
   }

   status = mmal_format_full_copy(graph_port->format, port->format);
   if (status != MMAL_SUCCESS)
   {
      LOG_ERROR("format copy failed on port %s", port->name);
      return status;
   }

   graph_port->buffer_num_min = port->buffer_num_min;
   graph_port->buffer_num_recommended = port->buffer_num_recommended;
   graph_port->buffer_size_min = port->buffer_size_min;
   graph_port->buffer_size_recommended = port->buffer_size_recommended;
   graph_port->buffer_alignment_min = port->buffer_alignment_min;
   graph_port->capabilities = port->capabilities;
   if (init)
   {
      graph_port->buffer_num = port->buffer_num;
      graph_port->buffer_size = port->buffer_size;
   }
   return MMAL_SUCCESS;
}
