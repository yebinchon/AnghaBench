
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int m68ki_exception_illegal () ;

__attribute__((used)) static void m68k_op_illegal(void)
{
  m68ki_exception_illegal();
}
