
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_REMEMBER_JMP_STEPS ;
 int * CPU_remember_JMP ;
 int CPU_remember_jmp_curpos ;
 int show_instruction (int ,int ) ;
 int stdout ;

__attribute__((used)) static void show_last_jumps(void)
{
 int i;
 for (i = 0; i < CPU_REMEMBER_JMP_STEPS; i++)
  show_instruction(stdout, CPU_remember_JMP[(CPU_remember_jmp_curpos + i) % CPU_REMEMBER_JMP_STEPS]);
}
