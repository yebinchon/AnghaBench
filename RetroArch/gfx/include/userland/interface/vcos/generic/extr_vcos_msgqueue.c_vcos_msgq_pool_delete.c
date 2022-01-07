
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sem; int blockpool; } ;
typedef TYPE_1__ VCOS_MSGQ_POOL_T ;


 int vcos_blockpool_delete (int *) ;
 int vcos_semaphore_delete (int *) ;

void vcos_msgq_pool_delete(VCOS_MSGQ_POOL_T *pool)
{
   vcos_blockpool_delete(&pool->blockpool);
   vcos_semaphore_delete(&pool->sem);
}
