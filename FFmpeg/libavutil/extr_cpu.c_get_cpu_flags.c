
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ARCH_AARCH64 ;
 scalar_t__ ARCH_ARM ;
 scalar_t__ ARCH_PPC ;
 scalar_t__ ARCH_X86 ;
 int ff_get_cpu_flags_aarch64 () ;
 int ff_get_cpu_flags_arm () ;
 int ff_get_cpu_flags_ppc () ;
 int ff_get_cpu_flags_x86 () ;

__attribute__((used)) static int get_cpu_flags(void)
{
    if (ARCH_AARCH64)
        return ff_get_cpu_flags_aarch64();
    if (ARCH_ARM)
        return ff_get_cpu_flags_arm();
    if (ARCH_PPC)
        return ff_get_cpu_flags_ppc();
    if (ARCH_X86)
        return ff_get_cpu_flags_x86();
    return 0;
}
