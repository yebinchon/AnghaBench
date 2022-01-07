
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int malloc_mutex_t ;


 int malloc_mutex_unlock (int *) ;

void
malloc_mutex_postfork_parent(malloc_mutex_t *mutex)
{

 malloc_mutex_unlock(mutex);
}
