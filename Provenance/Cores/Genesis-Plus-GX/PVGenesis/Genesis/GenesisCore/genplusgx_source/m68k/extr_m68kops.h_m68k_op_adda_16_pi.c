
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;


 scalar_t__ AX ;
 scalar_t__ MAKE_INT_16 (int ) ;
 scalar_t__ MASK_OUT_ABOVE_32 (scalar_t__) ;
 int OPER_AY_PI_16 () ;

__attribute__((used)) static void m68k_op_adda_16_pi(void)
{
  uint* r_dst = &AX;
  uint src = MAKE_INT_16(OPER_AY_PI_16());

  *r_dst = MASK_OUT_ABOVE_32(*r_dst + src);
}
