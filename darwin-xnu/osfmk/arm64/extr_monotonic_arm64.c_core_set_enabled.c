
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int PMCR0 ;
 int PMCR0_FIXED_EN ;
 int PMCR0_INIT ;
 int __builtin_arm_rsr64 (int ) ;
 int __builtin_arm_wsr64 (int ,int) ;

__attribute__((used)) static void
core_set_enabled(void)
{
 uint64_t pmcr0;

 pmcr0 = __builtin_arm_rsr64(PMCR0);
 pmcr0 |= PMCR0_INIT | PMCR0_FIXED_EN;
 __builtin_arm_wsr64(PMCR0, pmcr0);
}
