
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * sys_mutex_t ;
typedef int err_t ;


 int ERR_MEM ;
 int ERR_OK ;
 int ESP_THREAD_SAFE_DEBUG ;
 int LWIP_DEBUGF (int ,char*) ;
 int * xSemaphoreCreateMutex () ;

err_t
sys_mutex_new(sys_mutex_t *pxMutex)
{
  *pxMutex = xSemaphoreCreateMutex();
  if (*pxMutex == ((void*)0)) {
    LWIP_DEBUGF(ESP_THREAD_SAFE_DEBUG, ("sys_mutex_new: out of mem\r\n"));
    return ERR_MEM;
  }

  LWIP_DEBUGF(ESP_THREAD_SAFE_DEBUG, ("sys_mutex_new: m=%p\n", *pxMutex));

  return ERR_OK;
}
