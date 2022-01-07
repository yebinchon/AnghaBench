
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int malloc_mutex_t ;


 int malloc_mutex_lock (int *) ;

void
malloc_mutex_prefork(malloc_mutex_t *mutex)
{

 malloc_mutex_lock(mutex);
}
