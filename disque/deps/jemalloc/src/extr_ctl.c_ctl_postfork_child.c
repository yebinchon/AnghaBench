
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctl_mtx ;
 int malloc_mutex_postfork_child (int *) ;

void
ctl_postfork_child(void)
{

 malloc_mutex_postfork_child(&ctl_mtx);
}
