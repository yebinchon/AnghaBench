
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_CPU_FLAG_3DNOW ;
 int AV_CPU_FLAG_3DNOWEXT ;
 int AV_CPU_FLAG_AESNI ;
 int AV_CPU_FLAG_ATOM ;
 int AV_CPU_FLAG_AVX ;
 int AV_CPU_FLAG_AVX2 ;
 int AV_CPU_FLAG_AVX512 ;
 int AV_CPU_FLAG_AVXSLOW ;
 int AV_CPU_FLAG_BMI1 ;
 int AV_CPU_FLAG_BMI2 ;
 int AV_CPU_FLAG_CMOV ;
 int AV_CPU_FLAG_FMA3 ;
 int AV_CPU_FLAG_FMA4 ;
 int AV_CPU_FLAG_MMX ;
 int AV_CPU_FLAG_MMXEXT ;
 int AV_CPU_FLAG_SSE ;
 int AV_CPU_FLAG_SSE2 ;
 int AV_CPU_FLAG_SSE2SLOW ;
 int AV_CPU_FLAG_SSE3 ;
 int AV_CPU_FLAG_SSE3SLOW ;
 int AV_CPU_FLAG_SSE4 ;
 int AV_CPU_FLAG_SSE42 ;
 int AV_CPU_FLAG_SSSE3 ;
 int AV_CPU_FLAG_SSSE3SLOW ;
 int AV_CPU_FLAG_XOP ;
 int cpuid (int,int,int,int,int) ;
 int cpuid_test () ;
 int strncmp (char*,char*,int) ;
 int xgetbv (int ,int,int) ;

int ff_get_cpu_flags_x86(void)
{
    int rval = 0;
    return rval;
}
