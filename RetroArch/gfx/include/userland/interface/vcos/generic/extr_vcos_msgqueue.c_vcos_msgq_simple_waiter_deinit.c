
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int waitsem; } ;
typedef TYPE_1__ VCOS_MSG_SIMPLE_WAITER_T ;


 int vcos_semaphore_delete (int *) ;

__attribute__((used)) static void vcos_msgq_simple_waiter_deinit(VCOS_MSG_SIMPLE_WAITER_T *waiter)
{
   vcos_semaphore_delete(&waiter->waitsem);
}
