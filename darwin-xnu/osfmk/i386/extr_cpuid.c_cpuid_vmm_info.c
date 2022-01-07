
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i386_vmm_info_t ;


 int _cpuid_vmm_info ;
 int * _cpuid_vmm_infop ;
 int cpuid_init_vmm_info (int *) ;

i386_vmm_info_t *
cpuid_vmm_info(void)
{
 if (_cpuid_vmm_infop == ((void*)0)) {
  cpuid_init_vmm_info(&_cpuid_vmm_info);
  _cpuid_vmm_infop = &_cpuid_vmm_info;
 }
 return _cpuid_vmm_infop;
}
