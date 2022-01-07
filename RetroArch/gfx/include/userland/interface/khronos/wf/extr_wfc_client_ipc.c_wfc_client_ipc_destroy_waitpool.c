
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sem; TYPE_1__* waiters; } ;
typedef TYPE_2__ WFC_WAITPOOL_T ;
struct TYPE_4__ {int sem; } ;


 int WFC_CLIENT_IPC_MAX_WAITERS ;
 int vcos_semaphore_delete (int *) ;

__attribute__((used)) static void wfc_client_ipc_destroy_waitpool(WFC_WAITPOOL_T *waitpool)
{
   int i;

   for (i = 0; i < WFC_CLIENT_IPC_MAX_WAITERS; i++)
      vcos_semaphore_delete(&waitpool->waiters[i].sem);

   vcos_semaphore_delete(&waitpool->sem);
}
