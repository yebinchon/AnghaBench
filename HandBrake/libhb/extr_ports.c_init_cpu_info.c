
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int* buf4; char* buf; int platform; int count; } ;


 int AV_CPU_FLAG_SSE ;
 int HB_CPU_PLATFORM_INTEL_BDW ;
 int HB_CPU_PLATFORM_INTEL_BNL ;
 int HB_CPU_PLATFORM_INTEL_CHT ;
 int HB_CPU_PLATFORM_INTEL_HSW ;
 int HB_CPU_PLATFORM_INTEL_ICL ;
 int HB_CPU_PLATFORM_INTEL_IVB ;
 int HB_CPU_PLATFORM_INTEL_KBL ;
 int HB_CPU_PLATFORM_INTEL_SKL ;
 int HB_CPU_PLATFORM_INTEL_SLM ;
 int HB_CPU_PLATFORM_INTEL_SNB ;
 int HB_CPU_PLATFORM_UNSPECIFIED ;
 int av_get_cpu_flags () ;
 int cpuid (int,int*,int*,int*,int*) ;
 TYPE_1__ hb_cpu_info ;
 int init_cpu_count () ;
 scalar_t__ isspace (char) ;

__attribute__((used)) static void init_cpu_info()
{
    hb_cpu_info.name = ((void*)0);
    hb_cpu_info.count = init_cpu_count();
    hb_cpu_info.platform = HB_CPU_PLATFORM_UNSPECIFIED;

    if (av_get_cpu_flags() & AV_CPU_FLAG_SSE)
    {
    }
}
