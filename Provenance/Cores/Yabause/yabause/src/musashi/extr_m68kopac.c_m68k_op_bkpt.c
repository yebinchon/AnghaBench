
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_010_PLUS (int ) ;
 scalar_t__ CPU_TYPE_IS_EC020_PLUS (int ) ;
 int REG_IR ;
 int m68ki_bkpt_ack (int) ;
 int m68ki_exception_illegal () ;

void m68k_op_bkpt(void)
{
 if(CPU_TYPE_IS_010_PLUS(CPU_TYPE))
 {
  m68ki_bkpt_ack(CPU_TYPE_IS_EC020_PLUS(CPU_TYPE) ? REG_IR & 7 : 0);
 }
 m68ki_exception_illegal();
}
