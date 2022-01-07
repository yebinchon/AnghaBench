
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lock ;
 int pthread_mutex_lock (int *) ;

void vcos_global_lock(void)
{
   pthread_mutex_lock(&lock);
}
