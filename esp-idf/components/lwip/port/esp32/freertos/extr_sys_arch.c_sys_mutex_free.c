
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * sys_mutex_t ;


 int ESP_THREAD_SAFE_DEBUG ;
 int LWIP_DEBUGF (int ,char*) ;
 int vSemaphoreDelete (int *) ;

void
sys_mutex_free(sys_mutex_t *pxMutex)
{
  LWIP_DEBUGF(ESP_THREAD_SAFE_DEBUG, ("sys_mutex_free: m=%p\n", *pxMutex));
  vSemaphoreDelete(*pxMutex);
  *pxMutex = ((void*)0);
}
