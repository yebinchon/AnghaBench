
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sys_sem_t ;
typedef scalar_t__ BaseType_t ;


 int LWIP_ASSERT (char*,int) ;
 scalar_t__ errQUEUE_FULL ;
 scalar_t__ pdTRUE ;
 scalar_t__ xSemaphoreGive (int ) ;

void
sys_sem_signal(sys_sem_t *sem)
{
  BaseType_t ret = xSemaphoreGive(*sem);

  LWIP_ASSERT("sys_sem_signal: sane return value",
             (ret == pdTRUE) || (ret == errQUEUE_FULL));
}
