
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ BITS (int ,int,int) ;
 int FASTTRAP_T_INV ;
 int arm_unconditional_misc (int ) ;

__attribute__((used)) static
int arm_unconditional(uint32_t instr)
{
 if (BITS(instr,27,0x1) == 0)
  return arm_unconditional_misc(instr);





 return FASTTRAP_T_INV;
}
