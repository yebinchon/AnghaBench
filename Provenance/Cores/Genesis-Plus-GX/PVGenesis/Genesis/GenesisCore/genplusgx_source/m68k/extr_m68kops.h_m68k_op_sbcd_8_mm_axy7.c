
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 scalar_t__ CFLAG_SET ;
 int EA_A7_PD_8 () ;
 scalar_t__ FLAG_C ;
 scalar_t__ FLAG_N ;
 int FLAG_V ;
 scalar_t__ FLAG_X ;
 int FLAG_Z ;
 scalar_t__ HIGH_NIBBLE (int) ;
 int LOW_NIBBLE (int) ;
 int MASK_OUT_ABOVE_8 (int) ;
 scalar_t__ NFLAG_SET ;
 int OPER_A7_PD_8 () ;
 int VFLAG_CLEAR ;
 int XFLAG_AS_1 () ;
 int m68ki_read_8 (int) ;
 int m68ki_write_8 (int,int) ;

__attribute__((used)) static void m68k_op_sbcd_8_mm_axy7(void)
{
  uint src = OPER_A7_PD_8();
  uint ea = EA_A7_PD_8();
  uint dst = m68ki_read_8(ea);
  uint res = LOW_NIBBLE(dst) - LOW_NIBBLE(src) - XFLAG_AS_1();


  FLAG_V = VFLAG_CLEAR;

  if(res > 9)
    res -= 6;
  res += HIGH_NIBBLE(dst) - HIGH_NIBBLE(src);
  if(res > 0x99)
  {
    res += 0xa0;
    FLAG_X = FLAG_C = CFLAG_SET;
    FLAG_N = NFLAG_SET;
  }
  else
    FLAG_N = FLAG_X = FLAG_C = 0;

  res = MASK_OUT_ABOVE_8(res);



  FLAG_Z |= res;

  m68ki_write_8(ea, res);
}
