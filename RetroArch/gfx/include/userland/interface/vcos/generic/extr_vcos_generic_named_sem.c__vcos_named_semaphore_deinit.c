
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lock ;
 int * sems_in_use ;
 int sems_pool ;
 int vcos_blockpool_delete (int *) ;
 int vcos_mutex_delete (int *) ;

void _vcos_named_semaphore_deinit(void)
{
   vcos_blockpool_delete(&sems_pool);
   vcos_mutex_delete(&lock);
   sems_in_use = ((void*)0);
}
