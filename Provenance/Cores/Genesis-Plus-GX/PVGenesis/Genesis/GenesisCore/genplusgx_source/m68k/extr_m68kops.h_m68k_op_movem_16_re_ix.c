
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CYC_MOVEM_W ;
 int EA_AY_IX_16 () ;
 int MASK_OUT_ABOVE_16 (int ) ;
 int OPER_I_16 () ;
 int * REG_DA ;
 int USE_CYCLES (int) ;
 int m68ki_write_16 (int,int ) ;

__attribute__((used)) static void m68k_op_movem_16_re_ix(void)
{
  uint i = 0;
  uint register_list = OPER_I_16();
  uint ea = EA_AY_IX_16();
  uint count = 0;

  for(; i < 16; i++)
    if(register_list & (1 << i))
    {
      m68ki_write_16(ea, MASK_OUT_ABOVE_16(REG_DA[i]));
      ea += 2;
      count++;
    }

  USE_CYCLES(count * CYC_MOVEM_W);
}
