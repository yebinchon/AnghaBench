
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DX ;
 int DY ;
 int FLAG_Z ;

__attribute__((used)) static void m68k_op_btst_32_r_d(void)
{
  FLAG_Z = DY & (1 << (DX & 0x1f));
}
