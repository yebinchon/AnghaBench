
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_SUB_32 (int,int,int) ;
 scalar_t__ COND_EQ () ;
 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_EC020_PLUS (int ) ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_32 (int) ;
 int NFLAG_32 (int) ;
 int OPER_I_32 () ;
 int* REG_D ;
 int* REG_DA ;
 int USE_CYCLES (int) ;
 int VFLAG_SUB_32 (int,int,int) ;
 int m68ki_exception_illegal () ;
 int m68ki_read_32 (int) ;
 int m68ki_trace_t0 () ;
 int m68ki_write_32 (int,int) ;

void m68k_op_cas2_32(void)
{
 if(CPU_TYPE_IS_EC020_PLUS(CPU_TYPE))
 {
  uint word2 = OPER_I_32();
  uint* compare1 = &REG_D[(word2 >> 16) & 7];
  uint ea1 = REG_DA[(word2 >> 28) & 15];
  uint dest1 = m68ki_read_32(ea1);
  uint res1 = dest1 - *compare1;
  uint* compare2 = &REG_D[word2 & 7];
  uint ea2 = REG_DA[(word2 >> 12) & 15];
  uint dest2 = m68ki_read_32(ea2);
  uint res2;

  m68ki_trace_t0();
  FLAG_N = NFLAG_32(res1);
  FLAG_Z = MASK_OUT_ABOVE_32(res1);
  FLAG_V = VFLAG_SUB_32(*compare1, dest1, res1);
  FLAG_C = CFLAG_SUB_32(*compare1, dest1, res1);

  if(COND_EQ())
  {
   res2 = dest2 - *compare2;

   FLAG_N = NFLAG_32(res2);
   FLAG_Z = MASK_OUT_ABOVE_32(res2);
   FLAG_V = VFLAG_SUB_32(*compare2, dest2, res2);
   FLAG_C = CFLAG_SUB_32(*compare2, dest2, res2);

   if(COND_EQ())
   {
    USE_CYCLES(3);
    m68ki_write_32(ea1, REG_D[(word2 >> 22) & 7]);
    m68ki_write_32(ea2, REG_D[(word2 >> 6) & 7]);
    return;
   }
  }
  *compare1 = dest1;
  *compare2 = dest2;
  return;
 }
 m68ki_exception_illegal();
}
