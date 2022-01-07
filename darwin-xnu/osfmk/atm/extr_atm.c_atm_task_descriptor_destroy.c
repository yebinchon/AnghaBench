
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* atm_task_descriptor_t ;
struct TYPE_4__ {int lock; int flags; } ;


 int ATM_TASK_DEAD ;
 int atm_task_descriptor_dealloc (TYPE_1__*) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

void
atm_task_descriptor_destroy(atm_task_descriptor_t task_descriptor)
{

 lck_mtx_lock(&task_descriptor->lock);
 task_descriptor->flags = ATM_TASK_DEAD;
 lck_mtx_unlock(&task_descriptor->lock);

 atm_task_descriptor_dealloc(task_descriptor);
}
