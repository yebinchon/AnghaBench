
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;


 scalar_t__ AX ;
 short MAKE_INT_16 (int ) ;
 scalar_t__ MASK_OUT_ABOVE_32 (scalar_t__) ;
 int OPER_AL_16 () ;

void m68k_op_suba_16_al(void)
{
 signed short src = MAKE_INT_16(OPER_AL_16());
 uint* r_dst = &AX;

 *r_dst = MASK_OUT_ABOVE_32(*r_dst - src);
}
