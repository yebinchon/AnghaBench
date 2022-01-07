
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_CLEAR ;
 int DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_32 (int ) ;
 int NFLAG_32 (int ) ;
 int VFLAG_CLEAR ;

__attribute__((used)) static void m68k_op_not_32_d(void)
{
  uint* r_dst = &DY;
  uint res = *r_dst = MASK_OUT_ABOVE_32(~*r_dst);

  FLAG_N = NFLAG_32(res);
  FLAG_Z = res;
  FLAG_C = CFLAG_CLEAR;
  FLAG_V = VFLAG_CLEAR;
}
