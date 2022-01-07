
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BITS (int ,int,int) ;
 int FASTTRAP_T_INV ;
 int arm_branch_link_blockdata (int ) ;
 int arm_dataproc_misc (int ) ;
 int arm_loadstore_wordbyte (int ) ;
 int arm_media (int ) ;
 int arm_syscall_coproc (int ) ;
 int arm_unconditional (int ) ;

int dtrace_decode_arm(uint32_t instr)
{
 int cond = BITS(instr,28,0xF), op1 = BITS(instr,25,0x7), op = BITS(instr,4,0x1);

 if (cond == 0xF)
  return arm_unconditional(instr);

 if ((op1 & 0x6) == 0)
  return arm_dataproc_misc(instr);

 if (op1 == 0x2)
  return arm_loadstore_wordbyte(instr);

 if (op1 == 0x3 && op == 0)
  return arm_loadstore_wordbyte(instr);

 if (op1 == 0x3 && op == 1)
  return arm_media(instr);

 if ((op1 & 0x6) == 0x4)
  return arm_branch_link_blockdata(instr);

 if ((op1 & 0x6) == 0x6)
  return arm_syscall_coproc(instr);

 return FASTTRAP_T_INV;
}
