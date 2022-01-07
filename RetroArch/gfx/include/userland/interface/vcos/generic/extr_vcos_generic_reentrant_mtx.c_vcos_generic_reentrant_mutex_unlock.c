
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; scalar_t__ owner; int mutex; } ;
typedef TYPE_1__ VCOS_REENTRANT_MUTEX_T ;


 int vcos_assert (int) ;
 int vcos_mutex_unlock (int *) ;
 scalar_t__ vcos_thread_current () ;

void vcos_generic_reentrant_mutex_unlock(VCOS_REENTRANT_MUTEX_T *m)
{
   vcos_assert(m->count != 0);
   vcos_assert(m->owner == vcos_thread_current());
   m->count--;
   if (m->count == 0)
   {
      m->owner = 0;
      vcos_mutex_unlock(&m->mutex);
   }
}
