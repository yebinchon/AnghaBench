
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lock ;
 int pthread_mutex_unlock (int *) ;

void vcos_global_unlock(void)
{
   pthread_mutex_unlock(&lock);
}
