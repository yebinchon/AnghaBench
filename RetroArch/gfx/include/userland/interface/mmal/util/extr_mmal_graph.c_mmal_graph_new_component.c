
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ component_num; int ** component; } ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_GRAPH_T ;
typedef TYPE_1__ MMAL_GRAPH_PRIVATE_T ;
typedef int MMAL_COMPONENT_T ;


 scalar_t__ GRAPH_CONNECTIONS_MAX ;
 int LOG_ERROR (char*,char const*,...) ;
 int LOG_TRACE (char*,int *,char const*,int **) ;
 scalar_t__ MMAL_ENOSPC ;
 scalar_t__ MMAL_SUCCESS ;
 int mmal_component_acquire (int *) ;
 scalar_t__ mmal_component_create (char const*,int **) ;

MMAL_STATUS_T mmal_graph_new_component(MMAL_GRAPH_T *graph, const char *name,
   MMAL_COMPONENT_T **component)
{
   MMAL_GRAPH_PRIVATE_T *private = (MMAL_GRAPH_PRIVATE_T *)graph;
   MMAL_COMPONENT_T *comp;
   MMAL_STATUS_T status;

   LOG_TRACE("graph: %p, name: %s, component: %p", graph, name, component);

   if (private->component_num >= GRAPH_CONNECTIONS_MAX)
   {
      LOG_ERROR("no space for component %s", name);
      return MMAL_ENOSPC;
   }

   status = mmal_component_create(name, &comp);
   if (status != MMAL_SUCCESS)
   {
      LOG_ERROR("could not create component %s (%i)", name, status);
      return status;
   }

   private->component[private->component_num++] = comp;
   if (component)
   {
      mmal_component_acquire(comp);
      *component = comp;
   }

   return MMAL_SUCCESS;
}
