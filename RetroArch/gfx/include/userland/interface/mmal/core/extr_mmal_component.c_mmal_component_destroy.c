
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; int name; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_COMPONENT_T ;


 int LOG_TRACE (char*,int ,int ) ;
 int MMAL_EINVAL ;
 int mmal_component_release_internal (TYPE_1__*) ;

MMAL_STATUS_T mmal_component_destroy(MMAL_COMPONENT_T *component)
{
   if(!component)
      return MMAL_EINVAL;

   LOG_TRACE("%s %d", component->name, component->id);

   return mmal_component_release_internal(component);
}
