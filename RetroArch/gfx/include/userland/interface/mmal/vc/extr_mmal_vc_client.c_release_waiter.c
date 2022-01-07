
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int sem; } ;
struct TYPE_10__ {TYPE_1__ waitpool; } ;
struct TYPE_9__ {struct TYPE_9__* inuse; } ;
typedef TYPE_2__ MMAL_WAITER_T ;
typedef TYPE_3__ MMAL_CLIENT_T ;


 int LOG_TRACE (char*,TYPE_2__*) ;
 int vcos_assert (TYPE_2__*) ;
 int vcos_semaphore_post (int *) ;

__attribute__((used)) static void release_waiter(MMAL_CLIENT_T *client, MMAL_WAITER_T *waiter)
{
   LOG_TRACE("at %p", waiter);
   vcos_assert(waiter);
   vcos_assert(waiter->inuse);
   waiter->inuse = 0;
   vcos_semaphore_post(&client->waitpool.sem);
}
