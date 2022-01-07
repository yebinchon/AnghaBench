
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int lock; } ;
struct TYPE_6__ {TYPE_1__* priv; int id; int name; } ;
struct TYPE_5__ {int refcount; } ;
typedef TYPE_2__ MMAL_COMPONENT_T ;
typedef TYPE_3__ MMAL_COMPONENT_CORE_PRIVATE_T ;


 int LOG_TRACE (char*,int ,int ,int ) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

void mmal_component_acquire(MMAL_COMPONENT_T *component)
{
   MMAL_COMPONENT_CORE_PRIVATE_T *private = (MMAL_COMPONENT_CORE_PRIVATE_T *)component->priv;

   LOG_TRACE("component %s(%d), refcount %i", component->name, component->id,
             component->priv->refcount);

   vcos_mutex_lock(&private->lock);
   component->priv->refcount++;
   vcos_mutex_unlock(&private->lock);
}
