
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;


 int CFLAG_ADD_32 (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ DX ;
 scalar_t__ EA_AY_PI_32 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_32 (scalar_t__) ;
 int NFLAG_32 (scalar_t__) ;
 int VFLAG_ADD_32 (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ m68ki_read_32 (scalar_t__) ;
 int m68ki_write_32 (scalar_t__,int ) ;

__attribute__((used)) static void m68k_op_add_32_re_pi(void)
{
  uint ea = EA_AY_PI_32();
  uint src = DX;
  uint dst = m68ki_read_32(ea);
  uint res = src + dst;

  FLAG_N = NFLAG_32(res);
  FLAG_V = VFLAG_ADD_32(src, dst, res);
  FLAG_X = FLAG_C = CFLAG_ADD_32(src, dst, res);
  FLAG_Z = MASK_OUT_ABOVE_32(res);

  m68ki_write_32(ea, FLAG_Z);
}
