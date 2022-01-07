
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;


 scalar_t__ AX ;
 scalar_t__ MASK_OUT_ABOVE_32 (scalar_t__) ;
 scalar_t__ OPER_AL_32 () ;

void m68k_op_suba_32_al(void)
{
 uint src = OPER_AL_32();
 uint* r_dst = &AX;

 *r_dst = MASK_OUT_ABOVE_32(*r_dst - src);
}
