
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int kpc_config_t ;


 int CFGWORD_EL0A32EN_MASK ;
 int CFGWORD_EL0A64EN_MASK ;
 int CFGWORD_EL1EN_MASK ;
 int CFGWORD_EL3EN_MASK ;
 int PMCR1_EL0_A32_ENABLE_MASK (int) ;
 int PMCR1_EL0_A64_ENABLE_MASK (int) ;
 int PMCR1_EL1_A64_ENABLE_MASK (int) ;
 int PMCR1_EL3_A64_ENABLE_MASK (int) ;
 int PMESR_EVT_DECODE (int,int,int) ;
 int SREG_PMCR1 ;
 int SREG_PMESR0 ;
 int SREG_PMESR1 ;
 int SREG_READ (int ) ;

__attribute__((used)) static uint64_t
get_counter_config(uint32_t counter)
{
 uint64_t pmesr;

 switch (counter) {
  case 2:
  case 3:
  case 4:
  case 5:
   pmesr = PMESR_EVT_DECODE(SREG_READ(SREG_PMESR0), counter, 2);
   break;
  case 6:
  case 7:





   pmesr = PMESR_EVT_DECODE(SREG_READ(SREG_PMESR1), counter, 6);
   break;
  default:
   pmesr = 0;
   break;
 }

 kpc_config_t config = pmesr;

 uint64_t pmcr1 = SREG_READ(SREG_PMCR1);

 if (pmcr1 & PMCR1_EL0_A32_ENABLE_MASK(counter)) {
  config |= CFGWORD_EL0A32EN_MASK;
 }
 if (pmcr1 & PMCR1_EL0_A64_ENABLE_MASK(counter)) {
  config |= CFGWORD_EL0A64EN_MASK;
 }
 if (pmcr1 & PMCR1_EL1_A64_ENABLE_MASK(counter)) {
  config |= CFGWORD_EL1EN_MASK;



 }

 if (pmcr1 & PMCR1_EL3_A64_ENABLE_MASK(counter)) {
  config |= CFGWORD_EL3EN_MASK;
 }


 return config;
}
