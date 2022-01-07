
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int BITS (int ,int,int) ;
 int FASTTRAP_T_B_COND ;
 int FASTTRAP_T_INV ;

__attribute__((used)) static
int thumb16_cond_supervisor(uint16_t instr)
{
 int opcode = BITS(instr,8,0xF);

 if ((opcode & 0xE) != 0xE)
  return FASTTRAP_T_B_COND;

 return FASTTRAP_T_INV;
}
