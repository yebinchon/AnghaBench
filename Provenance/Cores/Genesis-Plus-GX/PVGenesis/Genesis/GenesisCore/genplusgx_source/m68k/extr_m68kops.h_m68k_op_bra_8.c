
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MASK_OUT_ABOVE_8 (int ) ;
 int REG_IR ;
 int m68ki_branch_8 (int ) ;

__attribute__((used)) static void m68k_op_bra_8(void)
{
  m68ki_branch_8(MASK_OUT_ABOVE_8(REG_IR));
}
