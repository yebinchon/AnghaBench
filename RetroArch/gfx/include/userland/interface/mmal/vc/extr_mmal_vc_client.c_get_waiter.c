
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* waiters; int sem; } ;
struct TYPE_8__ {int lock; TYPE_1__ waitpool; } ;
struct TYPE_7__ {scalar_t__ inuse; } ;
typedef TYPE_2__ MMAL_WAITER_T ;
typedef TYPE_3__ MMAL_CLIENT_T ;


 int MAX_WAITERS ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;
 int vcos_semaphore_wait (int *) ;
 scalar_t__ vcos_verify (int) ;

__attribute__((used)) static MMAL_WAITER_T *get_waiter(MMAL_CLIENT_T *client)
{
   int i;
   MMAL_WAITER_T *waiter = ((void*)0);
   vcos_semaphore_wait(&client->waitpool.sem);
   vcos_mutex_lock(&client->lock);
   for (i=0; i<MAX_WAITERS; i++)
   {
      if (client->waitpool.waiters[i].inuse == 0)
         break;
   }

   if (vcos_verify(i != MAX_WAITERS))
   {
      waiter = client->waitpool.waiters+i;
      waiter->inuse = 1;
   }
   vcos_mutex_unlock(&client->lock);

   return waiter;
}
