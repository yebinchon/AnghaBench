
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_CLEAR ;
 int EA_AW_8 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int NFLAG_8 (int) ;
 int VFLAG_CLEAR ;
 int m68ki_read_8 (int) ;
 scalar_t__ m68ki_tas_callback () ;
 int m68ki_write_8 (int,int) ;

__attribute__((used)) static void m68k_op_tas_8_aw(void)
{
  uint ea = EA_AW_8();
  uint dst = m68ki_read_8(ea);

  FLAG_Z = dst;
  FLAG_N = NFLAG_8(dst);
  FLAG_V = VFLAG_CLEAR;
  FLAG_C = CFLAG_CLEAR;





  if (m68ki_tas_callback()) m68ki_write_8(ea, dst | 0x80);
}
