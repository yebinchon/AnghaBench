
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPER_AW_16 () ;
 int m68ki_set_ccr (int ) ;

void m68k_op_move_16_toc_aw(void)
{
 m68ki_set_ccr(OPER_AW_16());
}
