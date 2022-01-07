
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;


 scalar_t__ AY ;
 scalar_t__ MASK_OUT_ABOVE_32 (scalar_t__) ;
 int REG_IR ;

void m68k_op_subq_32_a(void)
{
 uint* r_dst = &AY;

 *r_dst = MASK_OUT_ABOVE_32(*r_dst - ((((REG_IR >> 9) - 1) & 7) + 1));
}
