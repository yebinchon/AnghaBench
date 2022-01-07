
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sys_sem_t ;


 int ESP_THREAD_SAFE_DEBUG ;
 int LWIP_DEBUGF (int ,char*) ;
 int * pthread_getspecific (int ) ;
 int * sys_thread_sem_init () ;
 int sys_thread_sem_key ;

sys_sem_t*
sys_thread_sem_get(void)
{
  sys_sem_t *sem = pthread_getspecific(sys_thread_sem_key);

  if (!sem) {
      sem = sys_thread_sem_init();
  }
  LWIP_DEBUGF(ESP_THREAD_SAFE_DEBUG, ("sem_get s=%p\n", sem));
  return sem;
}
