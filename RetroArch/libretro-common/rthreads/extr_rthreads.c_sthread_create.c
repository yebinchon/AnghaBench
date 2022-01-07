
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sthread_t ;


 int * sthread_create_with_priority (void (*) (void*),void*,int ) ;

sthread_t *sthread_create(void (*thread_func)(void*), void *userdata)
{
 return sthread_create_with_priority(thread_func, userdata, 0);
}
