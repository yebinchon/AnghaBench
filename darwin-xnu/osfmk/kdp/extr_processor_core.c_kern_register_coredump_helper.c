
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kern_return_t ;
typedef int kern_coredump_callback_config ;
typedef int cpu_type_t ;
typedef int cpu_subtype_t ;
typedef int boolean_t ;


 int KERN_NOT_SUPPORTED ;

kern_return_t
kern_register_coredump_helper(int kern_coredump_config_vers, kern_coredump_callback_config *kc_callbacks, void* refcon,
    const char *core_description, boolean_t is64bit, uint32_t mh_magic,
    cpu_type_t cpu_type, cpu_subtype_t cpu_subtype)
{
#pragma unused(kern_coredump_config_vers, kc_callbacks, refcon, core_description, is64bit, mh_magic, cpu_type, cpu_subtype)
 return KERN_NOT_SUPPORTED;
}
