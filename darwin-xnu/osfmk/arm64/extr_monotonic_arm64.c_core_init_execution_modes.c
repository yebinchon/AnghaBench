
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int PMCR1 ;
 int PMCR1_INIT ;
 int __builtin_arm_rsr64 (int ) ;
 int __builtin_arm_wsr64 (int ,int ) ;

__attribute__((used)) static inline void
core_init_execution_modes(void)
{
 uint64_t pmcr1;

 pmcr1 = __builtin_arm_rsr64(PMCR1);
 pmcr1 |= PMCR1_INIT;
 __builtin_arm_wsr64(PMCR1, pmcr1);
}
