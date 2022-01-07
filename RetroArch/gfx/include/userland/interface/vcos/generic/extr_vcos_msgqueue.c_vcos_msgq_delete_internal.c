
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int sem; } ;
typedef TYPE_1__ VCOS_MSGQUEUE_T ;


 int vcos_mutex_delete (int *) ;
 int vcos_semaphore_delete (int *) ;

__attribute__((used)) static void vcos_msgq_delete_internal(VCOS_MSGQUEUE_T *q)
{
   vcos_semaphore_delete(&q->sem);
   vcos_mutex_delete(&q->lock);
}
