
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;


 scalar_t__ AX ;
 scalar_t__ MASK_OUT_ABOVE_32 (scalar_t__) ;
 scalar_t__ OPER_AW_32 () ;

__attribute__((used)) static void m68k_op_suba_32_aw(void)
{
  uint* r_dst = &AX;
  uint src = OPER_AW_32();

  *r_dst = MASK_OUT_ABOVE_32(*r_dst - src);
}
