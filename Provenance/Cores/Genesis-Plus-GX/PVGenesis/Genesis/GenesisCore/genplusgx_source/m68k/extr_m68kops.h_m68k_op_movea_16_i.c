
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AX ;
 int MAKE_INT_16 (int ) ;
 int OPER_I_16 () ;

__attribute__((used)) static void m68k_op_movea_16_i(void)
{
  AX = MAKE_INT_16(OPER_I_16());
}
