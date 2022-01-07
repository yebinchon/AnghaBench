
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sys_mutex_t ;
typedef scalar_t__ BaseType_t ;


 int LWIP_ASSERT (char*,int) ;
 scalar_t__ pdTRUE ;
 int portMAX_DELAY ;
 scalar_t__ xSemaphoreTake (int ,int ) ;

void
sys_mutex_lock(sys_mutex_t *pxMutex)
{
  BaseType_t ret = xSemaphoreTake(*pxMutex, portMAX_DELAY);

  LWIP_ASSERT("failed to take the mutex", ret == pdTRUE);
}
