
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv; int id; int name; } ;
struct TYPE_5__ {int refcount; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_COMPONENT_T ;


 int LOG_TRACE (char*,int ,int ,int ) ;
 int MMAL_EINVAL ;
 int mmal_component_release_internal (TYPE_2__*) ;

MMAL_STATUS_T mmal_component_release(MMAL_COMPONENT_T *component)
{
   if(!component)
      return MMAL_EINVAL;

   LOG_TRACE("component %s(%d), refcount %i", component->name, component->id,
             component->priv->refcount);

   return mmal_component_release_internal(component);
}
