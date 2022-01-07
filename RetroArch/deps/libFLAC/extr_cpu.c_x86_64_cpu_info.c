
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int intel; int sse3; int ssse3; int sse41; int sse42; int avx; int fma; int avx2; } ;
struct TYPE_5__ {int use_asm; TYPE_1__ x86; } ;
typedef int FLAC__uint32 ;
typedef int FLAC__bool ;
typedef TYPE_2__ FLAC__CPUInfo ;


 scalar_t__ FLAC__AVX_SUPPORTED ;
 int FLAC__CPUINFO_IA32_CPUID_AVX ;
 int FLAC__CPUINFO_IA32_CPUID_AVX2 ;
 int FLAC__CPUINFO_IA32_CPUID_FMA ;
 int FLAC__CPUINFO_IA32_CPUID_OSXSAVE ;
 int FLAC__CPUINFO_IA32_CPUID_SSE3 ;
 int FLAC__CPUINFO_IA32_CPUID_SSE41 ;
 int FLAC__CPUINFO_IA32_CPUID_SSE42 ;
 int FLAC__CPUINFO_IA32_CPUID_SSSE3 ;
 int FLAC__cpu_info_x86 (int,int*,int*,int*,int*) ;
 int cpu_xgetbv_x86 () ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
x86_64_cpu_info (FLAC__CPUInfo *info)
{
 (void) info;




}
