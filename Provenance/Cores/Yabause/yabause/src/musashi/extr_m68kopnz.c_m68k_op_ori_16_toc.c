
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPER_I_16 () ;
 int m68ki_get_ccr () ;
 int m68ki_set_ccr (int) ;

void m68k_op_ori_16_toc(void)
{
 m68ki_set_ccr(m68ki_get_ccr() | OPER_I_16());
}
