
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int base_mtx ;
 int malloc_mutex_prefork (int *) ;

void
base_prefork(void)
{

 malloc_mutex_prefork(&base_mtx);
}
