
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sys_sem_t ;


 int * pthread_getspecific (int ) ;
 int pthread_setspecific (int ,int *) ;
 int sys_thread_sem_free (int *) ;
 int sys_thread_sem_key ;

void
sys_thread_sem_deinit(void)
{
  sys_sem_t *sem = pthread_getspecific(sys_thread_sem_key);
  if (sem != ((void*)0)) {
    sys_thread_sem_free(sem);
    pthread_setspecific(sys_thread_sem_key, ((void*)0));
  }
}
