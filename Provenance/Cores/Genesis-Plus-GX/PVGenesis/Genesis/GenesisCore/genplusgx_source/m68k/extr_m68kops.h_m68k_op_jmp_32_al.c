
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EA_AL_32 () ;
 int m68ki_jump (int ) ;

__attribute__((used)) static void m68k_op_jmp_32_al(void)
{
  m68ki_jump(EA_AL_32());
}
