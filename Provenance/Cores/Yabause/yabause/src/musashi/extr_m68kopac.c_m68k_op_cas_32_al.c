
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_SUB_32 (int,int,int) ;
 scalar_t__ COND_NE () ;
 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_EC020_PLUS (int ) ;
 int EA_AL_32 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_32 (int) ;
 int NFLAG_32 (int) ;
 int OPER_I_16 () ;
 int* REG_D ;
 int USE_CYCLES (int) ;
 int VFLAG_SUB_32 (int,int,int) ;
 int m68ki_exception_illegal () ;
 int m68ki_read_32 (int) ;
 int m68ki_trace_t0 () ;
 int m68ki_write_32 (int,int) ;

void m68k_op_cas_32_al(void)
{
 if(CPU_TYPE_IS_EC020_PLUS(CPU_TYPE))
 {
  uint word2 = OPER_I_16();
  uint ea = EA_AL_32();
  uint dest = m68ki_read_32(ea);
  uint* compare = &REG_D[word2 & 7];
  uint res = dest - *compare;

  m68ki_trace_t0();
  FLAG_N = NFLAG_32(res);
  FLAG_Z = MASK_OUT_ABOVE_32(res);
  FLAG_V = VFLAG_SUB_32(*compare, dest, res);
  FLAG_C = CFLAG_SUB_32(*compare, dest, res);

  if(COND_NE())
   *compare = dest;
  else
  {
   USE_CYCLES(3);
   m68ki_write_32(ea, REG_D[(word2 >> 6) & 7]);
  }
  return;
 }
 m68ki_exception_illegal();
}
