
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; int mutex; } ;
typedef TYPE_1__ VCOS_REENTRANT_MUTEX_T ;


 int vcos_assert (int) ;
 int vcos_mutex_delete (int *) ;

void vcos_generic_reentrant_mutex_delete(VCOS_REENTRANT_MUTEX_T *m)
{
   vcos_assert(m->count == 0);
   vcos_mutex_delete(&m->mutex);
}
