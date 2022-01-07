
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32_t ;
typedef int sys_sem_t ;
typedef scalar_t__ err_t ;


 scalar_t__ ERR_OK ;
 int sys_arch_sem_wait (int *,scalar_t__) ;
 int sys_sem_free (int *) ;
 scalar_t__ sys_sem_new (int *,int ) ;

void
sys_msleep(u32_t ms)
{
  if (ms > 0) {
    sys_sem_t delaysem;
    err_t err = sys_sem_new(&delaysem, 0);
    if (err == ERR_OK) {
      sys_arch_sem_wait(&delaysem, ms);
      sys_sem_free(&delaysem);
    }
  }
}
