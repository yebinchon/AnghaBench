
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAKE_INT_16 (int ) ;
 scalar_t__ MASK_OUT_ABOVE_32 (scalar_t__) ;
 int OPER_I_16 () ;
 scalar_t__* REG_A ;
 int m68ki_write_32 (scalar_t__,scalar_t__) ;

void m68k_op_link_16_a7(void)
{
 REG_A[7] -= 4;
 m68ki_write_32(REG_A[7], REG_A[7]);
 REG_A[7] = MASK_OUT_ABOVE_32(REG_A[7] + MAKE_INT_16(OPER_I_16()));
}
