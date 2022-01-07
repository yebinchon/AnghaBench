
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int8_t ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {unsigned int component_num; scalar_t__* topology; TYPE_2__** component; } ;
typedef int MMAL_STATUS_T ;
typedef scalar_t__ MMAL_GRAPH_TOPOLOGY_T ;
typedef int MMAL_GRAPH_T ;
typedef TYPE_1__ MMAL_GRAPH_PRIVATE_T ;
typedef TYPE_2__ MMAL_COMPONENT_T ;


 int LOG_TRACE (char*,int *,int ,TYPE_2__*) ;
 int MMAL_EINVAL ;
 int MMAL_ENOSYS ;
 scalar_t__ MMAL_GRAPH_TOPOLOGY_STRAIGHT ;
 int MMAL_PARAM_UNUSED (unsigned int) ;
 int MMAL_SUCCESS ;

MMAL_STATUS_T mmal_graph_component_topology(MMAL_GRAPH_T *graph, MMAL_COMPONENT_T *component,
    MMAL_GRAPH_TOPOLOGY_T topology, int8_t *input, unsigned int input_num,
    int8_t *output, unsigned int output_num)
{
   MMAL_GRAPH_PRIVATE_T *private = (MMAL_GRAPH_PRIVATE_T *)graph;
   MMAL_PARAM_UNUSED(input); MMAL_PARAM_UNUSED(input_num);
   MMAL_PARAM_UNUSED(output); MMAL_PARAM_UNUSED(output_num);
   unsigned int i;

   LOG_TRACE("graph: %p, component: %s(%p)", graph, component ? component->name: 0, component);

   if (!component)
      return MMAL_EINVAL;

   for (i = 0; i < private->component_num; i++)
      if (component == private->component[i])
         break;

   if (i == private->component_num)
      return MMAL_EINVAL;

   if (topology > MMAL_GRAPH_TOPOLOGY_STRAIGHT)
      return MMAL_ENOSYS;

   private->topology[i] = topology;

   return MMAL_SUCCESS;
}
