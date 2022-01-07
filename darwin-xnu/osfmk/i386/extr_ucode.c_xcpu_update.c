
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KERN_SUCCESS ;
 int cpu_update ;
 int mp_broadcast (int ,int *) ;
 scalar_t__ register_locks () ;
 int ucode_cpuid_set_info () ;

__attribute__((used)) static void
xcpu_update(void)
{
 if (register_locks() != KERN_SUCCESS)
  return;


 mp_broadcast(cpu_update, ((void*)0));


 ucode_cpuid_set_info();
}
