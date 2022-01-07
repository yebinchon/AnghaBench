
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int m68ki_jump (int ) ;
 int m68ki_pull_32 () ;

__attribute__((used)) static void m68k_op_rts_32(void)
{
  m68ki_jump(m68ki_pull_32());
}
