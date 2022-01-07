
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned int input_num; unsigned int output_num; unsigned int clock_num; TYPE_1__** clock; TYPE_1__** output; TYPE_1__** input; } ;
struct TYPE_6__ {int type; unsigned int index; } ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef TYPE_2__ MMAL_GRAPH_PRIVATE_T ;






__attribute__((used)) static MMAL_PORT_T *find_port_from_graph(MMAL_GRAPH_PRIVATE_T *graph, MMAL_PORT_T *port)
{
   MMAL_PORT_T **list;
   unsigned int *list_num;

   switch (port->type)
   {
   case 129:
      list = graph->input;
      list_num = &graph->input_num;
      break;
   case 128:
      list = graph->output;
      list_num = &graph->output_num;
      break;
   case 130:
      list = graph->clock;
      list_num = &graph->clock_num;
      break;
   default:
      return 0;
   }

   if (port->index > *list_num)
      return 0;

   return list[port->index];
}
