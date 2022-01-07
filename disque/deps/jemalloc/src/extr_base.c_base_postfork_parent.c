
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int base_mtx ;
 int malloc_mutex_postfork_parent (int *) ;

void
base_postfork_parent(void)
{

 malloc_mutex_postfork_parent(&base_mtx);
}
