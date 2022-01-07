
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MMAL_COMPONENT_MODULE_T {int dummy; } ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_COMPONENT_T ;


 int LOG_TRACE (char*,char const*) ;
 int mmal_component_create_core (char const*,int (*) (char const*,int *),struct MMAL_COMPONENT_MODULE_T*,int **) ;

MMAL_STATUS_T mmal_component_create_with_constructor(const char *name,
   MMAL_STATUS_T (*constructor)(const char *name, MMAL_COMPONENT_T *),
   struct MMAL_COMPONENT_MODULE_T *constructor_private,
   MMAL_COMPONENT_T **component)
{
   LOG_TRACE("%s", name);
   return mmal_component_create_core(name, constructor, constructor_private, component);
}
