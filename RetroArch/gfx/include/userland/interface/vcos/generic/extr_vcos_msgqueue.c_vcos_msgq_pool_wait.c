
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* pool; int * waiter; int magic; } ;
typedef TYPE_1__ VCOS_MSG_T ;
struct TYPE_8__ {int waiter; int blockpool; int sem; } ;
typedef TYPE_2__ VCOS_MSGQ_POOL_T ;


 int MAGIC ;
 int vcos_assert (TYPE_1__*) ;
 TYPE_1__* vcos_blockpool_calloc (int *) ;
 int vcos_semaphore_wait (int *) ;

VCOS_MSG_T *vcos_msgq_pool_wait(VCOS_MSGQ_POOL_T *pool)
{
   VCOS_MSG_T *msg;
   vcos_semaphore_wait(&pool->sem);
   msg = vcos_blockpool_calloc(&pool->blockpool);
   vcos_assert(msg);
   msg->magic = MAGIC;
   msg->waiter = &pool->waiter;
   msg->pool = pool;
   return msg;
}
