
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int EA_AW_16 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int NFLAG_16 (int) ;
 int ROR_16 (int,int) ;
 int VFLAG_CLEAR ;
 int m68ki_read_16 (int) ;
 int m68ki_write_16 (int,int) ;

__attribute__((used)) static void m68k_op_ror_16_aw(void)
{
  uint ea = EA_AW_16();
  uint src = m68ki_read_16(ea);
  uint res = ROR_16(src, 1);

  m68ki_write_16(ea, res);

  FLAG_N = NFLAG_16(res);
  FLAG_Z = res;
  FLAG_C = src << 8;
  FLAG_V = VFLAG_CLEAR;
}
