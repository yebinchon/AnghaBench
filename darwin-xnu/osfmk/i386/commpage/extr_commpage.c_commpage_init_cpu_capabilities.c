
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int vector_unit; int cache_line_size; } ;
typedef TYPE_1__ ml_cpu_info_t ;


 int CPUID_FEATURE_AES ;
 int CPUID_FEATURE_F16C ;
 int CPUID_FEATURE_FMA ;
 int CPUID_FEATURE_RDRAND ;
 int CPUID_LEAF7_FEATURE_ADX ;
 int CPUID_LEAF7_FEATURE_AVX2 ;
 int CPUID_LEAF7_FEATURE_AVX512BW ;
 int CPUID_LEAF7_FEATURE_AVX512CD ;
 int CPUID_LEAF7_FEATURE_AVX512DQ ;
 int CPUID_LEAF7_FEATURE_AVX512F ;
 int CPUID_LEAF7_FEATURE_AVX512IFMA ;
 int CPUID_LEAF7_FEATURE_AVX512VBMI ;
 int CPUID_LEAF7_FEATURE_AVX512VL ;
 int CPUID_LEAF7_FEATURE_BMI1 ;
 int CPUID_LEAF7_FEATURE_BMI2 ;
 int CPUID_LEAF7_FEATURE_ERMS ;
 int CPUID_LEAF7_FEATURE_HLE ;
 int CPUID_LEAF7_FEATURE_MPX ;
 int CPUID_LEAF7_FEATURE_RDSEED ;
 int CPUID_LEAF7_FEATURE_RTM ;
 int CPUID_LEAF7_FEATURE_SGX ;
 int MSR_IA32_MISC_ENABLE ;
 scalar_t__ SLOW_TSC_THRESHOLD ;
 int _cpu_capabilities ;
 int commpage_cpus () ;
 int cpu_mode_is64bit () ;
 int cpuid_features () ;
 int cpuid_leaf7_features () ;
 int k64Bit ;
 int kCache128 ;
 int kCache32 ;
 int kCache64 ;
 int kFastThreadLocalStorage ;
 int kHasADX ;
 int kHasAES ;
 int kHasAVX1_0 ;
 int kHasAVX2_0 ;
 int kHasAVX512BW ;
 int kHasAVX512CD ;
 int kHasAVX512DQ ;
 int kHasAVX512F ;
 int kHasAVX512IFMA ;
 int kHasAVX512VBMI ;
 int kHasAVX512VL ;
 int kHasBMI1 ;
 int kHasBMI2 ;
 int kHasENFSTRG ;
 int kHasF16C ;
 int kHasFMA ;
 int kHasHLE ;
 int kHasMMX ;
 int kHasMPX ;
 int kHasRDRAND ;
 int kHasRDSEED ;
 int kHasRTM ;
 int kHasSGX ;
 int kHasSSE ;
 int kHasSSE2 ;
 int kHasSSE3 ;
 int kHasSSE4_1 ;
 int kHasSSE4_2 ;
 int kHasSupplementalSSE3 ;
 int kNumCPUsShift ;
 int kSlow ;
 int kUP ;
 int ml_cpu_get_info (TYPE_1__*) ;
 scalar_t__ ml_fpu_avx512_enabled () ;
 int rdmsr64 (int ) ;
 int setif (int,int ,int) ;
 scalar_t__ tscFreq ;

__attribute__((used)) static void
commpage_init_cpu_capabilities( void )
{
 uint64_t bits;
 int cpus;
 ml_cpu_info_t cpu_info;

 bits = 0;
 ml_cpu_get_info(&cpu_info);

 switch (cpu_info.vector_unit) {
  case 9:
   bits |= kHasAVX1_0;

  case 8:
   bits |= kHasSSE4_2;

  case 7:
   bits |= kHasSSE4_1;

  case 6:
   bits |= kHasSupplementalSSE3;

  case 5:
   bits |= kHasSSE3;

  case 4:
   bits |= kHasSSE2;

  case 3:
   bits |= kHasSSE;

  case 2:
   bits |= kHasMMX;
  default:
   break;
 }
 switch (cpu_info.cache_line_size) {
  case 128:
   bits |= kCache128;
   break;
  case 64:
   bits |= kCache64;
   break;
  case 32:
   bits |= kCache32;
   break;
  default:
   break;
 }
 cpus = commpage_cpus();

 bits |= (cpus << kNumCPUsShift);

 bits |= kFastThreadLocalStorage;




 if (cpus == 1) bits |= kUP;
 if (cpu_mode_is64bit()) bits |= k64Bit;
 if (tscFreq <= SLOW_TSC_THRESHOLD) bits |= kSlow;

 if (cpuid_features() & CPUID_FEATURE_AES) bits |= kHasAES;

 if (cpuid_features() & CPUID_FEATURE_F16C) bits |= kHasF16C;

 if (cpuid_features() & CPUID_FEATURE_RDRAND) bits |= kHasRDRAND;

 if (cpuid_features() & CPUID_FEATURE_FMA) bits |= kHasFMA;


 if (cpuid_leaf7_features() & CPUID_LEAF7_FEATURE_BMI1) bits |= kHasBMI1;

 if (cpuid_leaf7_features() & CPUID_LEAF7_FEATURE_BMI2) bits |= kHasBMI2;

 if (cpuid_leaf7_features() & CPUID_LEAF7_FEATURE_RTM) bits |= kHasRTM;

 if (cpuid_leaf7_features() & CPUID_LEAF7_FEATURE_HLE) bits |= kHasHLE;

 if (cpuid_leaf7_features() & CPUID_LEAF7_FEATURE_AVX2) bits |= kHasAVX2_0;

 if (cpuid_leaf7_features() & CPUID_LEAF7_FEATURE_RDSEED) bits |= kHasRDSEED;

 if (cpuid_leaf7_features() & CPUID_LEAF7_FEATURE_ADX) bits |= kHasADX;
 if (ml_fpu_avx512_enabled()) {
  if (cpuid_leaf7_features() & CPUID_LEAF7_FEATURE_AVX512F) bits |= kHasAVX512F;

  if (cpuid_leaf7_features() & CPUID_LEAF7_FEATURE_AVX512CD) bits |= kHasAVX512CD;

  if (cpuid_leaf7_features() & CPUID_LEAF7_FEATURE_AVX512DQ) bits |= kHasAVX512DQ;

  if (cpuid_leaf7_features() & CPUID_LEAF7_FEATURE_AVX512BW) bits |= kHasAVX512BW;

  if (cpuid_leaf7_features() & CPUID_LEAF7_FEATURE_AVX512VL) bits |= kHasAVX512VL;

  if (cpuid_leaf7_features() & CPUID_LEAF7_FEATURE_AVX512IFMA) bits |= kHasAVX512IFMA;

  if (cpuid_leaf7_features() & CPUID_LEAF7_FEATURE_AVX512VBMI) bits |= kHasAVX512VBMI;

 }


 uint64_t misc_enable = rdmsr64(MSR_IA32_MISC_ENABLE);
 if ((misc_enable & 1ULL) && (cpuid_leaf7_features() & CPUID_LEAF7_FEATURE_ERMS)) bits |= kHasENFSTRG;



 _cpu_capabilities = bits;
}
