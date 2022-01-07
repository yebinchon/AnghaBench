
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* pthread_attr_t ;
struct TYPE_4__ {int detachstate; } ;


 int EINVAL ;
 int PTHREAD_CREATE_DETACHED ;
 int PTHREAD_CREATE_JOINABLE ;
 scalar_t__ pte_is_attr (TYPE_1__**) ;

int pthread_attr_setdetachstate (pthread_attr_t * attr, int detachstate)
{
   if (pte_is_attr (attr) != 0)
      return EINVAL;

   if (detachstate != PTHREAD_CREATE_JOINABLE &&
         detachstate != PTHREAD_CREATE_DETACHED)
      return EINVAL;

   (*attr)->detachstate = detachstate;
   return 0;
}
