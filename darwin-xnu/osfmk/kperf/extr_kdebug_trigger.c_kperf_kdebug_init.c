
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int VM_KERN_MEMORY_DIAG ;
 int bzero (int *,int) ;
 int * kalloc_tag (int,int ) ;
 int * kperf_kdebug_filter ;

int
kperf_kdebug_init(void)
{
 kperf_kdebug_filter = kalloc_tag(sizeof(*kperf_kdebug_filter),
                                  VM_KERN_MEMORY_DIAG);
 if (kperf_kdebug_filter == ((void*)0)) {
  return ENOMEM;
 }
 bzero(kperf_kdebug_filter, sizeof(*kperf_kdebug_filter));

 return 0;
}
