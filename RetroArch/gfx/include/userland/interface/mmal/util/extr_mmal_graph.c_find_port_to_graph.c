
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__** clock; TYPE_1__** output; TYPE_1__** input; } ;
struct TYPE_8__ {unsigned int input_num; unsigned int output_num; unsigned int clock_num; TYPE_1__** clock; TYPE_1__** output; TYPE_1__** input; TYPE_3__* graph_component; } ;
struct TYPE_7__ {int type; } ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef TYPE_2__ MMAL_GRAPH_PRIVATE_T ;
typedef TYPE_3__ MMAL_COMPONENT_T ;






__attribute__((used)) static MMAL_PORT_T *find_port_to_graph(MMAL_GRAPH_PRIVATE_T *graph, MMAL_PORT_T *port)
{
   MMAL_COMPONENT_T *component = graph->graph_component;
   MMAL_PORT_T **list, **component_list;
   unsigned int i, *list_num;

   switch (port->type)
   {
   case 129:
      list = graph->input;
      list_num = &graph->input_num;
      component_list = component->input;
      break;
   case 128:
      list = graph->output;
      list_num = &graph->output_num;
      component_list = component->output;
      break;
   case 130:
      list = graph->clock;
      list_num = &graph->clock_num;
      component_list = component->clock;
      break;
   default:
      return 0;
   }

   for (i = 0; i < *list_num; i++)
      if (list[i] == port)
         break;

   if (i == *list_num)
      return 0;
   return component_list[i];
}
