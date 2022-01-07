
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vendor_shuffle ;
typedef int uint64_t ;


 int RETRO_SIMD_AES ;
 int RETRO_SIMD_ASIMD ;
 int RETRO_SIMD_AVX ;
 int RETRO_SIMD_AVX2 ;
 int RETRO_SIMD_CMOV ;
 int RETRO_SIMD_MMX ;
 int RETRO_SIMD_MMXEXT ;
 int RETRO_SIMD_MOVBE ;
 int RETRO_SIMD_NEON ;
 int RETRO_SIMD_POPCNT ;
 int RETRO_SIMD_PS ;
 int RETRO_SIMD_SSE ;
 int RETRO_SIMD_SSE2 ;
 int RETRO_SIMD_SSE3 ;
 int RETRO_SIMD_SSE4 ;
 int RETRO_SIMD_SSE42 ;
 int RETRO_SIMD_SSSE3 ;
 int RETRO_SIMD_VFPU ;
 int RETRO_SIMD_VFPV3 ;
 int RETRO_SIMD_VFPV4 ;
 int RETRO_SIMD_VMX ;
 int RETRO_SIMD_VMX128 ;
 int VENDOR_INTEL_b ;
 int VENDOR_INTEL_c ;
 int VENDOR_INTEL_d ;
 int arm_enable_runfast_mode () ;
 scalar_t__ check_arm_cpu_feature (char*) ;
 int memcpy (char*,int*,int) ;
 scalar_t__ sysctlbyname (char*,int *,size_t*,int *,int ) ;
 int x86_cpuid (int,int*) ;
 int xgetbv_x86 (int ) ;

uint64_t cpu_features_get(void)
{
   uint64_t cpu = 0;
   if (check_arm_cpu_feature("neon"))
   {
      cpu |= RETRO_SIMD_NEON;



   }

   if (check_arm_cpu_feature("vfpv3"))
      cpu |= RETRO_SIMD_VFPV3;

   if (check_arm_cpu_feature("vfpv4"))
      cpu |= RETRO_SIMD_VFPV4;

   if (check_arm_cpu_feature("asimd"))
   {
      cpu |= RETRO_SIMD_ASIMD;




   }
   return cpu;
}
