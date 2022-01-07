
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_STATUS_T ;
typedef int MMAL_COMPONENT_T ;


 int LOG_TRACE (char*,char const*,int *) ;
 int mmal_component_create_from_graph (char const*,int *) ;

MMAL_STATUS_T mmal_graph_component_constructor(const char *name,
   MMAL_COMPONENT_T *component)
{
   LOG_TRACE("name: %s, component: %p", name, component);
   return mmal_component_create_from_graph(name, component);
}
