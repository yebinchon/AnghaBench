
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ VCOS_STATUS_T ;
struct TYPE_5__ {int sem; TYPE_1__* waiters; } ;
struct TYPE_4__ {int sem; scalar_t__ inuse; } ;
typedef TYPE_2__ MMAL_WAITPOOL_T ;
typedef int MMAL_STATUS_T ;


 int MAX_WAITERS ;
 int MMAL_ENOSPC ;
 int MMAL_SUCCESS ;
 char* VCOS_FUNCTION ;
 scalar_t__ VCOS_SUCCESS ;
 scalar_t__ vcos_semaphore_create (int *,char*,int) ;
 int vcos_semaphore_delete (int *) ;

__attribute__((used)) static MMAL_STATUS_T create_waitpool(MMAL_WAITPOOL_T *waitpool)
{
   VCOS_STATUS_T status;
   int i;

   status = vcos_semaphore_create(&waitpool->sem, VCOS_FUNCTION,
                                  MAX_WAITERS);
   if (status != VCOS_SUCCESS)
      return status==VCOS_SUCCESS ? MMAL_SUCCESS : MMAL_ENOSPC;

   for (i=0; i<MAX_WAITERS; i++)
   {
      waitpool->waiters[i].inuse = 0;
      status = vcos_semaphore_create(&waitpool->waiters[i].sem,
                                     "mmal waiter", 0);
      if (status != VCOS_SUCCESS)
         break;
   }

   if (status != VCOS_SUCCESS)
   {

      i--;
      while (i>=0)
      {
         vcos_semaphore_delete(&waitpool->waiters[i].sem);
         i--;
      }
      vcos_semaphore_delete(&waitpool->sem);
   }
   return status==VCOS_SUCCESS ? MMAL_SUCCESS : MMAL_ENOSPC;
}
