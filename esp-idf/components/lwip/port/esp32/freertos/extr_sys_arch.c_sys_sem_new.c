
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int * sys_sem_t ;
typedef int err_t ;
typedef scalar_t__ BaseType_t ;


 int ERR_MEM ;
 int ERR_OK ;
 int ESP_THREAD_SAFE_DEBUG ;
 int LWIP_ASSERT (char*,int) ;
 int LWIP_DEBUGF (int ,char*) ;
 scalar_t__ pdTRUE ;
 int * xSemaphoreCreateBinary () ;
 scalar_t__ xSemaphoreGive (int *) ;

err_t
sys_sem_new(sys_sem_t *sem, u8_t count)
{
  LWIP_ASSERT("initial_count invalid (neither 0 nor 1)",
             (count == 0) || (count == 1));

  *sem = xSemaphoreCreateBinary();
  if (*sem == ((void*)0)) {
      LWIP_DEBUGF(ESP_THREAD_SAFE_DEBUG, ("sys_sem_new: out of mem\r\n"));
      return ERR_MEM;
  }

  if (count == 1) {
      BaseType_t ret = xSemaphoreGive(*sem);
      LWIP_ASSERT("sys_sem_new: initial give failed", ret == pdTRUE);
  }

  return ERR_OK;
}
