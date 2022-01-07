
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned int component_num; scalar_t__* topology; int ** component; } ;
struct TYPE_6__ {scalar_t__ index; int * component; } ;
typedef TYPE_1__ MMAL_PORT_T ;
typedef TYPE_2__ MMAL_GRAPH_PRIVATE_T ;
typedef int MMAL_COMPONENT_T ;
typedef int MMAL_BOOL_T ;


 int MMAL_FALSE ;
 scalar_t__ MMAL_GRAPH_TOPOLOGY_STRAIGHT ;
 int MMAL_TRUE ;

__attribute__((used)) static MMAL_BOOL_T graph_component_topology_ports_linked(MMAL_GRAPH_PRIVATE_T *graph,
   MMAL_PORT_T *port1, MMAL_PORT_T *port2)
{
   MMAL_COMPONENT_T *component = port1->component;
   unsigned int i;

   for (i = 0; i < graph->component_num; i++)
      if (component == graph->component[i])
         break;

   if (i == graph->component_num)
      return MMAL_FALSE;

   if (graph->topology[i] == MMAL_GRAPH_TOPOLOGY_STRAIGHT)
      return port1->index == port2->index;

   return MMAL_TRUE;
}
