
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int AX ;
 int AY ;

void m68k_op_exg_32_aa(void)
{
 uint* reg_a = &AX;
 uint* reg_b = &AY;
 uint tmp = *reg_a;
 *reg_a = *reg_b;
 *reg_b = tmp;
}
