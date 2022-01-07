
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_CLEAR ;
 int EA_AL_32 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int NFLAG_32 (int) ;
 int OPER_I_32 () ;
 int VFLAG_CLEAR ;
 int m68ki_read_32 (int) ;
 int m68ki_write_32 (int,int) ;

__attribute__((used)) static void m68k_op_eori_32_al(void)
{
  uint src = OPER_I_32();
  uint ea = EA_AL_32();
  uint res = src ^ m68ki_read_32(ea);

  m68ki_write_32(ea, res);

  FLAG_N = NFLAG_32(res);
  FLAG_Z = res;
  FLAG_C = CFLAG_CLEAR;
  FLAG_V = VFLAG_CLEAR;
}
