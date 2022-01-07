
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int AY ;
 int CYC_MOVEM_L ;
 int OPER_I_16 () ;
 int * REG_DA ;
 int USE_CYCLES (int) ;
 int m68ki_read_32 (int) ;

__attribute__((used)) static void m68k_op_movem_32_er_pi(void)
{
  uint i = 0;
  uint register_list = OPER_I_16();
  uint ea = AY;
  uint count = 0;

  for(; i < 16; i++)
    if(register_list & (1 << i))
    {
      REG_DA[i] = m68ki_read_32(ea);
      ea += 4;
      count++;
    }
  AY = ea;

  USE_CYCLES(count * CYC_MOVEM_L);
}
