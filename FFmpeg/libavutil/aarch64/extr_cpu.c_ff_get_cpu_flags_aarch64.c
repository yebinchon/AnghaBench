
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_CPU_FLAG_ARMV8 ;
 int AV_CPU_FLAG_NEON ;
 int AV_CPU_FLAG_VFP ;
 int HAVE_ARMV8 ;
 int HAVE_NEON ;
 int HAVE_VFP ;

int ff_get_cpu_flags_aarch64(void)
{
    return AV_CPU_FLAG_ARMV8 * HAVE_ARMV8 |
           AV_CPU_FLAG_NEON * HAVE_NEON |
           AV_CPU_FLAG_VFP * HAVE_VFP;
}
