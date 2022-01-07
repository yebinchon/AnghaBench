
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int DX ;
 int DY ;

void m68k_op_exg_32_dd(void)
{
 uint* reg_a = &DX;
 uint* reg_b = &DY;
 uint tmp = *reg_a;
 *reg_a = *reg_b;
 *reg_b = tmp;
}
