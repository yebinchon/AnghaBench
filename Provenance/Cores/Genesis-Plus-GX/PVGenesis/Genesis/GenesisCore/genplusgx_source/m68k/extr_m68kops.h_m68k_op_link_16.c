
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;


 scalar_t__ AY ;
 scalar_t__ MAKE_INT_16 (int ) ;
 scalar_t__ MASK_OUT_ABOVE_32 (scalar_t__) ;
 int OPER_I_16 () ;
 scalar_t__* REG_A ;
 int m68ki_push_32 (scalar_t__) ;

__attribute__((used)) static void m68k_op_link_16(void)
{
  uint* r_dst = &AY;

  m68ki_push_32(*r_dst);
  *r_dst = REG_A[7];
  REG_A[7] = MASK_OUT_ABOVE_32(REG_A[7] + MAKE_INT_16(OPER_I_16()));
}
