
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_STATUS_T ;
typedef int MMAL_GRAPH_T ;
typedef int MMAL_GRAPH_PRIVATE_T ;
typedef int MMAL_COMPONENT_T ;


 int LOG_TRACE (char*,int *,char const*,int **) ;
 int mmal_component_create_from_graph ;
 int mmal_component_create_with_constructor (char const*,int ,int *,int **) ;

MMAL_STATUS_T mmal_graph_build(MMAL_GRAPH_T *graph,
   const char *name, MMAL_COMPONENT_T **component)
{
   LOG_TRACE("graph: %p, name: %s, component: %p", graph, name, component);
   return mmal_component_create_with_constructor(name, mmal_component_create_from_graph,
      (MMAL_GRAPH_PRIVATE_T *)graph, component);
}
