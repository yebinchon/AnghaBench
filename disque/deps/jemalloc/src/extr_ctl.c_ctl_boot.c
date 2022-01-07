
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctl_initialized ;
 int ctl_mtx ;
 scalar_t__ malloc_mutex_init (int *) ;

bool
ctl_boot(void)
{

 if (malloc_mutex_init(&ctl_mtx))
  return (1);

 ctl_initialized = 0;

 return (0);
}
