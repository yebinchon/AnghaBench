
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * REG_A ;
 int m68ki_read_32 (int ) ;

__attribute__((used)) static void m68k_op_unlk_32_a7(void)
{
  REG_A[7] = m68ki_read_32(REG_A[7]);
}
