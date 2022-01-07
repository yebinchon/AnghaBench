
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int name; } ;
struct TYPE_6__ {scalar_t__ component_num; TYPE_2__** component; } ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_GRAPH_T ;
typedef TYPE_1__ MMAL_GRAPH_PRIVATE_T ;
typedef TYPE_2__ MMAL_COMPONENT_T ;


 scalar_t__ GRAPH_CONNECTIONS_MAX ;
 int LOG_ERROR (char*,int ) ;
 int LOG_TRACE (char*,int *,int ,TYPE_2__*) ;
 int MMAL_EINVAL ;
 int MMAL_ENOSPC ;
 int MMAL_SUCCESS ;
 int mmal_component_acquire (TYPE_2__*) ;

MMAL_STATUS_T mmal_graph_add_component(MMAL_GRAPH_T *graph, MMAL_COMPONENT_T *component)
{
   MMAL_GRAPH_PRIVATE_T *private = (MMAL_GRAPH_PRIVATE_T *)graph;

   LOG_TRACE("graph: %p, component: %s(%p)", graph, component ? component->name: 0, component);

   if (!component)
      return MMAL_EINVAL;

   if (private->component_num >= GRAPH_CONNECTIONS_MAX)
   {
      LOG_ERROR("no space for component %s", component->name);
      return MMAL_ENOSPC;
   }

   mmal_component_acquire(component);
   private->component[private->component_num++] = component;

   return MMAL_SUCCESS;
}
