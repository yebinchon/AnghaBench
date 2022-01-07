
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_6__ {int cpuid_features; scalar_t__ cpuid_family; scalar_t__ cpuid_model; scalar_t__ cpuid_stepping; } ;
struct TYPE_4__ {int mcg_ext_corr_err_p; int mcg_ctl_p; int count; } ;
struct TYPE_5__ {TYPE_1__ bits; int u64; } ;


 int CPUID_FEATURE_MCA ;
 int CPUID_FEATURE_MCE ;
 scalar_t__ CPUID_MODEL_CRYSTALWELL ;
 scalar_t__ CPUID_MODEL_HASWELL ;
 scalar_t__ CPUID_MODEL_HASWELL_ULT ;
 int IA32_MCG_CAP ;
 TYPE_3__* cpuid_info () ;
 TYPE_2__ ia32_mcg_cap ;
 int mca_MCA_present ;
 int mca_MCE_present ;
 int mca_cmci_present ;
 int mca_control_MSR_present ;
 int mca_error_bank_count ;
 scalar_t__ mca_family ;
 int panic (char*) ;
 int rdmsr64 (int ) ;

__attribute__((used)) static void
mca_get_availability(void)
{
 uint64_t features = cpuid_info()->cpuid_features;
 uint32_t family = cpuid_info()->cpuid_family;
 uint32_t model = cpuid_info()->cpuid_model;
 uint32_t stepping = cpuid_info()->cpuid_stepping;

 if ((model == CPUID_MODEL_HASWELL && stepping < 3) ||
     (model == CPUID_MODEL_HASWELL_ULT && stepping < 1) ||
     (model == CPUID_MODEL_CRYSTALWELL && stepping < 1))
  panic("Haswell pre-C0 steppings are not supported");

 mca_MCE_present = (features & CPUID_FEATURE_MCE) != 0;
 mca_MCA_present = (features & CPUID_FEATURE_MCA) != 0;
 mca_family = family;




 if (mca_MCA_present) {
  ia32_mcg_cap.u64 = rdmsr64(IA32_MCG_CAP);
  mca_error_bank_count = ia32_mcg_cap.bits.count;
  mca_control_MSR_present = ia32_mcg_cap.bits.mcg_ctl_p;
  mca_cmci_present = ia32_mcg_cap.bits.mcg_ext_corr_err_p;
 }
}
