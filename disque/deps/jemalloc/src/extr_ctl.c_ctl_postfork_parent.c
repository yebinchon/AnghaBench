
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctl_mtx ;
 int malloc_mutex_postfork_parent (int *) ;

void
ctl_postfork_parent(void)
{

 malloc_mutex_postfork_parent(&ctl_mtx);
}
