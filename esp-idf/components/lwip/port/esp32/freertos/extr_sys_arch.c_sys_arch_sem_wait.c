
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32_t ;
typedef int sys_sem_t ;
typedef int TickType_t ;
typedef scalar_t__ BaseType_t ;


 int LWIP_ASSERT (char*,int) ;
 int SYS_ARCH_TIMEOUT ;
 scalar_t__ errQUEUE_EMPTY ;
 scalar_t__ pdTRUE ;
 int portMAX_DELAY ;
 int portTICK_RATE_MS ;
 scalar_t__ xSemaphoreTake (int ,int) ;

u32_t
sys_arch_sem_wait(sys_sem_t *sem, u32_t timeout)
{
  BaseType_t ret;

  if (!timeout) {

    ret = xSemaphoreTake(*sem, portMAX_DELAY);
    LWIP_ASSERT("taking semaphore failed", ret == pdTRUE);
  } else {
    TickType_t timeout_ticks = timeout / portTICK_RATE_MS;
    ret = xSemaphoreTake(*sem, timeout_ticks);
    if (ret == errQUEUE_EMPTY) {

      return SYS_ARCH_TIMEOUT;
    }
    LWIP_ASSERT("taking semaphore failed", ret == pdTRUE);
  }

  return 0;
}
