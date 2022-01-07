
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32_t ;
typedef int sys_sem_t ;


 int sys_sem_free (int ) ;
 int sys_sem_new (int ) ;
 int sys_sem_wait_timeout (int ,int ) ;

void
sys_msleep(u32_t ms)
{
  sys_sem_t delaysem = sys_sem_new(0);

  sys_sem_wait_timeout(delaysem, ms);

  sys_sem_free(delaysem);
}
