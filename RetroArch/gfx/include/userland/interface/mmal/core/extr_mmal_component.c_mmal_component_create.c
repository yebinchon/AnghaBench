
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_STATUS_T ;
typedef int MMAL_COMPONENT_T ;


 int LOG_TRACE (char*,char const*) ;
 int mmal_component_create_core (char const*,int ,int ,int **) ;

MMAL_STATUS_T mmal_component_create(const char *name,
   MMAL_COMPONENT_T **component)
{
   LOG_TRACE("%s", name);
   return mmal_component_create_core(name, 0, 0, component);
}
