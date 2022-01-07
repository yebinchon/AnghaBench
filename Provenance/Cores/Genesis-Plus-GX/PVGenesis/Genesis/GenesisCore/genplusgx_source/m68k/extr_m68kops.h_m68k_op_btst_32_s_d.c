
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DY ;
 int FLAG_Z ;
 int OPER_I_8 () ;

__attribute__((used)) static void m68k_op_btst_32_s_d(void)
{
  FLAG_Z = DY & (1 << (OPER_I_8() & 0x1f));
}
