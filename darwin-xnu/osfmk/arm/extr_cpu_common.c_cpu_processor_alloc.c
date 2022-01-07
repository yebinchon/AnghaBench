
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * processor_t ;
typedef scalar_t__ boolean_t ;


 int BootProcessor ;
 int bzero (void*,int) ;
 int * kalloc (int) ;

processor_t
cpu_processor_alloc(boolean_t is_boot_cpu)
{
 processor_t proc;

 if (is_boot_cpu)
  return &BootProcessor;

 proc = kalloc(sizeof(*proc));
 if (!proc)
  return ((void*)0);

 bzero((void *) proc, sizeof(*proc));
 return proc;
}
