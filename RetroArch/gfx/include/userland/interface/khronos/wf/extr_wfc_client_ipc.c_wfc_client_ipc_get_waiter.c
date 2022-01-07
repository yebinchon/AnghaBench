
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ inuse; } ;
typedef TYPE_2__ WFC_WAITER_T ;
struct TYPE_6__ {TYPE_2__* waiters; int sem; } ;
struct TYPE_8__ {int lock; TYPE_1__ waitpool; } ;
typedef TYPE_3__ WFC_CLIENT_IPC_T ;


 int WFC_CLIENT_IPC_MAX_WAITERS ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;
 int vcos_semaphore_wait (int *) ;
 scalar_t__ vcos_verify (int) ;

__attribute__((used)) static WFC_WAITER_T *wfc_client_ipc_get_waiter(WFC_CLIENT_IPC_T *client)
{
   int i;
   WFC_WAITER_T *waiter = ((void*)0);

   vcos_semaphore_wait(&client->waitpool.sem);
   vcos_mutex_lock(&client->lock);

   for (i = 0; i < WFC_CLIENT_IPC_MAX_WAITERS; i++)
   {
      if (client->waitpool.waiters[i].inuse == 0)
         break;
   }


   if (vcos_verify(i != WFC_CLIENT_IPC_MAX_WAITERS))
   {
      waiter = client->waitpool.waiters + i;
      waiter->inuse = 1;
   }
   vcos_mutex_unlock(&client->lock);

   return waiter;
}
