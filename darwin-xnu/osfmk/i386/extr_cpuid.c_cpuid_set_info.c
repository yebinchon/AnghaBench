
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_6__ {scalar_t__ cpuid_cpu_type; int cpuid_features; int cpuid_extfeatures; int cpuid_leaf7_features; scalar_t__ cpuid_cpu_subtype; scalar_t__ cpuid_cpufamily; scalar_t__ core_count; scalar_t__ cpuid_cores_per_package; scalar_t__ thread_count; scalar_t__ cpuid_logical_per_package; char* cpuid_model_string; int cpuid_vendor; } ;
typedef TYPE_1__ i386_cpu_info_t ;
typedef int enable_x86_64h ;
typedef int disable_x86_64h ;
typedef scalar_t__ boolean_t ;




 scalar_t__ CPUFAMILY_UNKNOWN ;
 int CPUID_STRING_UNKNOWN ;
 int CPUID_VID_INTEL ;
 int CPUID_X86_64_H_EXTFEATURE_SUBSET ;
 int CPUID_X86_64_H_FEATURE_SUBSET ;
 int CPUID_X86_64_H_LEAF7_FEATURE_SUBSET ;
 scalar_t__ CPU_SUBTYPE_X86_64_H ;
 scalar_t__ CPU_SUBTYPE_X86_ARCH1 ;
 scalar_t__ CPU_TYPE_X86 ;
 int DBG (char*,...) ;
 scalar_t__ FALSE ;
 int MSR_CORE_THREAD_COUNT ;
 scalar_t__ PE_parse_boot_argn (char*,scalar_t__*,int) ;
 scalar_t__ TRUE ;
 void* bitfield32 (int ,int,int) ;
 TYPE_1__ cpuid_cpu_info ;
 int cpuid_set_cache_info (TYPE_1__*) ;
 scalar_t__ cpuid_set_cpufamily (TYPE_1__*) ;
 int cpuid_set_generic_info (TYPE_1__*) ;
 int min (scalar_t__,int) ;
 int panic (char*) ;
 int rdmsr64 (int ) ;
 scalar_t__ strlen (int ) ;
 scalar_t__ strncmp (int ,int ,int ) ;

void
cpuid_set_info(void)
{
 i386_cpu_info_t *info_p = &cpuid_cpu_info;
 boolean_t enable_x86_64h = TRUE;

 cpuid_set_generic_info(info_p);


 if ((strncmp(CPUID_VID_INTEL, info_p->cpuid_vendor,
       min(strlen(CPUID_STRING_UNKNOWN) + 1,
    sizeof(info_p->cpuid_vendor)))) ||
    (cpuid_set_cpufamily(info_p) == CPUFAMILY_UNKNOWN))
  panic("Unsupported CPU");

 info_p->cpuid_cpu_type = CPU_TYPE_X86;

 if (!PE_parse_boot_argn("-enable_x86_64h", &enable_x86_64h, sizeof(enable_x86_64h))) {
  boolean_t disable_x86_64h = FALSE;

  if (PE_parse_boot_argn("-disable_x86_64h", &disable_x86_64h, sizeof(disable_x86_64h))) {
   enable_x86_64h = FALSE;
  }
 }

 if (enable_x86_64h &&
     ((info_p->cpuid_features & CPUID_X86_64_H_FEATURE_SUBSET) == CPUID_X86_64_H_FEATURE_SUBSET) &&
     ((info_p->cpuid_extfeatures & CPUID_X86_64_H_EXTFEATURE_SUBSET) == CPUID_X86_64_H_EXTFEATURE_SUBSET) &&
     ((info_p->cpuid_leaf7_features & CPUID_X86_64_H_LEAF7_FEATURE_SUBSET) == CPUID_X86_64_H_LEAF7_FEATURE_SUBSET)) {
  info_p->cpuid_cpu_subtype = CPU_SUBTYPE_X86_64_H;
 } else {
  info_p->cpuid_cpu_subtype = CPU_SUBTYPE_X86_ARCH1;
 }


 if (info_p->cpuid_cpufamily == 129)
  cpuid_set_cache_info(info_p);





 switch (info_p->cpuid_cpufamily) {
 case 129:
  info_p->core_count = info_p->cpuid_cores_per_package;
  info_p->thread_count = info_p->cpuid_logical_per_package;
  break;
 case 128: {
  uint64_t msr = rdmsr64(MSR_CORE_THREAD_COUNT);
  info_p->core_count = bitfield32((uint32_t)msr, 19, 16);
  info_p->thread_count = bitfield32((uint32_t)msr, 15, 0);
  break;
  }
 default: {
  uint64_t msr = rdmsr64(MSR_CORE_THREAD_COUNT);
  if (msr == 0)

   msr = (1 << 16) + 1;
  info_p->core_count = bitfield32((uint32_t)msr, 31, 16);
  info_p->thread_count = bitfield32((uint32_t)msr, 15, 0);
  break;
  }
 }
 if (info_p->core_count == 0) {
  info_p->core_count = info_p->cpuid_cores_per_package;
  info_p->thread_count = info_p->cpuid_logical_per_package;
 }

 if (info_p->cpuid_cpufamily != 129)
  cpuid_set_cache_info(info_p);

 DBG("cpuid_set_info():\n");
 DBG("  core_count   : %d\n", info_p->core_count);
 DBG("  thread_count : %d\n", info_p->thread_count);
 DBG("       cpu_type: 0x%08x\n", info_p->cpuid_cpu_type);
 DBG("    cpu_subtype: 0x%08x\n", info_p->cpuid_cpu_subtype);

 info_p->cpuid_model_string = "";
}
