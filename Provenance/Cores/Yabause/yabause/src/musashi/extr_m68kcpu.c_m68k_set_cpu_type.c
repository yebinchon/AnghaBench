
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_ADDRESS_MASK ;
 int CPU_SR_MASK ;
 int CPU_TYPE ;
 int CPU_TYPE_000 ;
 int CPU_TYPE_010 ;
 int CPU_TYPE_020 ;
 int CPU_TYPE_EC020 ;
 int CYC_BCC_NOTAKE_B ;
 int CYC_BCC_NOTAKE_W ;
 int CYC_DBCC_F_EXP ;
 int CYC_DBCC_F_NOEXP ;
 int CYC_EXCEPTION ;
 int CYC_INSTRUCTION ;
 int CYC_MOVEM_L ;
 int CYC_MOVEM_W ;
 int CYC_RESET ;
 int CYC_SCC_R_TRUE ;
 int CYC_SHIFT ;




 int * m68ki_cycles ;
 int * m68ki_exception_cycle_table ;

void m68k_set_cpu_type(unsigned int cpu_type)
{
 switch(cpu_type)
 {
  case 131:
   CPU_TYPE = CPU_TYPE_000;
   CPU_ADDRESS_MASK = 0x00ffffff;
   CPU_SR_MASK = 0xa71f;
   CYC_INSTRUCTION = m68ki_cycles[0];
   CYC_EXCEPTION = m68ki_exception_cycle_table[0];
   CYC_BCC_NOTAKE_B = -2;
   CYC_BCC_NOTAKE_W = 2;
   CYC_DBCC_F_NOEXP = -2;
   CYC_DBCC_F_EXP = 2;
   CYC_SCC_R_TRUE = 2;
   CYC_MOVEM_W = 2;
   CYC_MOVEM_L = 3;
   CYC_SHIFT = 1;
   CYC_RESET = 132;
   return;
  case 130:
   CPU_TYPE = CPU_TYPE_010;
   CPU_ADDRESS_MASK = 0x00ffffff;
   CPU_SR_MASK = 0xa71f;
   CYC_INSTRUCTION = m68ki_cycles[1];
   CYC_EXCEPTION = m68ki_exception_cycle_table[1];
   CYC_BCC_NOTAKE_B = -4;
   CYC_BCC_NOTAKE_W = 0;
   CYC_DBCC_F_NOEXP = 0;
   CYC_DBCC_F_EXP = 6;
   CYC_SCC_R_TRUE = 0;
   CYC_MOVEM_W = 2;
   CYC_MOVEM_L = 3;
   CYC_SHIFT = 1;
   CYC_RESET = 130;
   return;
  case 128:
   CPU_TYPE = CPU_TYPE_EC020;
   CPU_ADDRESS_MASK = 0x00ffffff;
   CPU_SR_MASK = 0xf71f;
   CYC_INSTRUCTION = m68ki_cycles[2];
   CYC_EXCEPTION = m68ki_exception_cycle_table[2];
   CYC_BCC_NOTAKE_B = -2;
   CYC_BCC_NOTAKE_W = 0;
   CYC_DBCC_F_NOEXP = 0;
   CYC_DBCC_F_EXP = 4;
   CYC_SCC_R_TRUE = 0;
   CYC_MOVEM_W = 2;
   CYC_MOVEM_L = 2;
   CYC_SHIFT = 0;
   CYC_RESET = 518;
   return;
  case 129:
   CPU_TYPE = CPU_TYPE_020;
   CPU_ADDRESS_MASK = 0xffffffff;
   CPU_SR_MASK = 0xf71f;
   CYC_INSTRUCTION = m68ki_cycles[2];
   CYC_EXCEPTION = m68ki_exception_cycle_table[2];
   CYC_BCC_NOTAKE_B = -2;
   CYC_BCC_NOTAKE_W = 0;
   CYC_DBCC_F_NOEXP = 0;
   CYC_DBCC_F_EXP = 4;
   CYC_SCC_R_TRUE = 0;
   CYC_MOVEM_W = 2;
   CYC_MOVEM_L = 2;
   CYC_SHIFT = 0;
   CYC_RESET = 518;
   return;
 }
}
