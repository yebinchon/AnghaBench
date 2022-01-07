
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int input_num; unsigned int output_num; unsigned int clock_num; TYPE_1__** clock; TYPE_1__** output; TYPE_1__** input; } ;
struct TYPE_5__ {int type; int name; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef int MMAL_GRAPH_T ;
typedef TYPE_2__ MMAL_GRAPH_PRIVATE_T ;


 unsigned int GRAPH_CONNECTIONS_MAX ;
 int LOG_ERROR (char*,int ) ;
 int LOG_TRACE (char*,int *,int ,TYPE_1__*) ;
 int MMAL_EINVAL ;
 int MMAL_ENOSPC ;



 int MMAL_SUCCESS ;

MMAL_STATUS_T mmal_graph_add_port(MMAL_GRAPH_T *graph, MMAL_PORT_T *port)
{
   MMAL_GRAPH_PRIVATE_T *private = (MMAL_GRAPH_PRIVATE_T *)graph;
   MMAL_PORT_T **list;
   unsigned int *list_num;

   LOG_TRACE("graph: %p, port: %s(%p)", graph, port ? port->name: 0, port);

   if (!port)
      return MMAL_EINVAL;

   switch (port->type)
   {
   case 129:
      list = private->input;
      list_num = &private->input_num;
      break;
   case 128:
      list = private->output;
      list_num = &private->output_num;
      break;
   case 130:
      list = private->clock;
      list_num = &private->clock_num;
      break;
   default:
      return MMAL_EINVAL;
   }

   if (*list_num >= GRAPH_CONNECTIONS_MAX)
   {
      LOG_ERROR("no space for port %s", port->name);
      return MMAL_ENOSPC;
   }

   list[(*list_num)++] = port;
   return MMAL_SUCCESS;
}
