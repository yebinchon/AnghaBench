
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int DX ;
 int DY ;
 int FLAG_Z ;

__attribute__((used)) static void m68k_op_bchg_32_r_d(void)
{
  uint* r_dst = &DY;
  uint mask = 1 << (DX & 0x1f);

  FLAG_Z = *r_dst & mask;
  *r_dst ^= mask;
}
