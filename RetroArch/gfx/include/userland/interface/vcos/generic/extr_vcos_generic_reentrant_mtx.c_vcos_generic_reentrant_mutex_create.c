
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VCOS_STATUS_T ;
struct TYPE_3__ {int mutex; scalar_t__ owner; scalar_t__ count; } ;
typedef TYPE_1__ VCOS_REENTRANT_MUTEX_T ;


 int vcos_mutex_create (int *,char const*) ;

VCOS_STATUS_T vcos_generic_reentrant_mutex_create(VCOS_REENTRANT_MUTEX_T *m, const char *name)
{
   m->count = 0;
   m->owner = 0;
   return vcos_mutex_create(&m->mutex, name);
}
