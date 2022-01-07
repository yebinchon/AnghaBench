
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sys_mutex_t ;
typedef scalar_t__ BaseType_t ;


 int LWIP_ASSERT (char*,int) ;
 scalar_t__ pdTRUE ;
 scalar_t__ xSemaphoreGive (int ) ;

void
sys_mutex_unlock(sys_mutex_t *pxMutex)
{
  BaseType_t ret = xSemaphoreGive(*pxMutex);

  LWIP_ASSERT("failed to give the mutex", ret == pdTRUE);
}
