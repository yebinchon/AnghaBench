
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * sys_sem_t ;


 int vSemaphoreDelete (int *) ;

void
sys_sem_free(sys_sem_t *sem)
{
  vSemaphoreDelete(*sem);
  *sem = ((void*)0);
}
