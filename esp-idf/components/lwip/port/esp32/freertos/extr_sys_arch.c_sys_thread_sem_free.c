
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sys_sem_t ;


 int ESP_THREAD_SAFE_DEBUG ;
 int LWIP_DEBUGF (int ,char*) ;
 int free (scalar_t__*) ;
 int vSemaphoreDelete (scalar_t__) ;

__attribute__((used)) static void
sys_thread_sem_free(void* data)
{
  sys_sem_t *sem = (sys_sem_t*)(data);

  if (sem && *sem){
    LWIP_DEBUGF(ESP_THREAD_SAFE_DEBUG, ("sem del, sem=%p\n", *sem));
    vSemaphoreDelete(*sem);
  }

  if (sem) {
    LWIP_DEBUGF(ESP_THREAD_SAFE_DEBUG, ("sem pointer del, sem_p=%p\n", sem));
    free(sem);
  }
}
