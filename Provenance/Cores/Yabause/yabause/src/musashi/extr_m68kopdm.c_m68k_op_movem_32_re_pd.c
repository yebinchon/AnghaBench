
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
 int m68ki_write_32 (int,int ) ;

void m68k_op_movem_32_re_pd(void)
{
 uint i = 0;
 uint register_list = OPER_I_16();
 uint ea = AY;
 uint count = 0;

 for(; i < 16; i++)
  if(register_list & (1 << i))
  {
   ea -= 4;
   m68ki_write_32(ea, REG_DA[15-i]);
   count++;
  }
 AY = ea;

 USE_CYCLES(count<<CYC_MOVEM_L);
}
