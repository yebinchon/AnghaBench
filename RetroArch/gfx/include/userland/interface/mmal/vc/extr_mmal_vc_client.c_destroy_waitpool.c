
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sem; TYPE_1__* waiters; } ;
struct TYPE_4__ {int sem; } ;
typedef TYPE_2__ MMAL_WAITPOOL_T ;


 int MAX_WAITERS ;
 int vcos_semaphore_delete (int *) ;

__attribute__((used)) static void destroy_waitpool(MMAL_WAITPOOL_T *waitpool)
{
   int i;
   for (i=0; i<MAX_WAITERS; i++)
      vcos_semaphore_delete(&waitpool->waiters[i].sem);

   vcos_semaphore_delete(&waitpool->sem);
}
