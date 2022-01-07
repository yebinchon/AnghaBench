
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* pthread_attr_t ;
struct TYPE_4__ {int detachstate; } ;


 int EINVAL ;
 int PTHREAD_CREATE_DETACHED ;
 scalar_t__ pte_is_attr (TYPE_1__* const*) ;

int pthread_attr_getdetachstate (const pthread_attr_t * attr, int *detachstate)
{
   if (pte_is_attr (attr) != 0 || detachstate == ((void*)0))
   {
      *detachstate = PTHREAD_CREATE_DETACHED;
      return EINVAL;
   }

   *detachstate = (*attr)->detachstate;
   return 0;
}
