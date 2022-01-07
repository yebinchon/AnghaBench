
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DX ;
 int FLAG_Z ;
 int OPER_AW_8 () ;

__attribute__((used)) static void m68k_op_btst_8_r_aw(void)
{
  FLAG_Z = OPER_AW_8() & (1 << (DX & 7));
}
