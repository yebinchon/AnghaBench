
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_CLEAR ;
 int CFLAG_SET ;
 int EA_AL_8 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_8 (int) ;
 int NFLAG_8 (int) ;
 int VFLAG_CLEAR ;
 int XFLAG_AS_1 () ;
 int XFLAG_CLEAR ;
 int XFLAG_SET ;
 int m68ki_read_8 (int) ;
 int m68ki_write_8 (int,int) ;

__attribute__((used)) static void m68k_op_nbcd_8_al(void)
{
  uint ea = EA_AL_8();
  uint dst = m68ki_read_8(ea);
  uint res = MASK_OUT_ABOVE_8(0x9a - dst - XFLAG_AS_1());

  if(res != 0x9a)
  {
    FLAG_V = ~res;

    if((res & 0x0f) == 0xa)
      res = (res & 0xf0) + 0x10;

    res = MASK_OUT_ABOVE_8(res);

    FLAG_V &= res;

    m68ki_write_8(ea, MASK_OUT_ABOVE_8(res));

    FLAG_Z |= res;
    FLAG_C = CFLAG_SET;
    FLAG_X = XFLAG_SET;
  }
  else
  {
    FLAG_V = VFLAG_CLEAR;
    FLAG_C = CFLAG_CLEAR;
    FLAG_X = XFLAG_CLEAR;
  }
  FLAG_N = NFLAG_8(res);
}
