
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mask; int match; scalar_t__* cycles; int opcode_handler; } ;
typedef TYPE_1__ opcode_handler_struct ;


 int NUM_CPU_TYPES ;
 int m68k_op_illegal ;
 TYPE_1__* m68k_opcode_handler_table ;
 scalar_t__** m68ki_cycles ;
 int * m68ki_instruction_jump_table ;

void m68ki_build_opcode_table(void)
{
 opcode_handler_struct *ostruct;
 int cycle_cost;
 int instr;
 int i;
 int j;
 int k;

 for(i = 0; i < 0x10000; i++)
 {

  m68ki_instruction_jump_table[i] = m68k_op_illegal;
  for(k=0;k<NUM_CPU_TYPES;k++)
   m68ki_cycles[k][i] = 0;
 }

 ostruct = m68k_opcode_handler_table;
 while(ostruct->mask != 0xff00)
 {
  for(i = 0;i < 0x10000;i++)
  {
   if((i & ostruct->mask) == ostruct->match)
   {
    m68ki_instruction_jump_table[i] = ostruct->opcode_handler;
    for(k=0;k<NUM_CPU_TYPES;k++)
     m68ki_cycles[k][i] = ostruct->cycles[k];
   }
  }
  ostruct++;
 }
 while(ostruct->mask == 0xff00)
 {
  for(i = 0;i <= 0xff;i++)
  {
   m68ki_instruction_jump_table[ostruct->match | i] = ostruct->opcode_handler;
   for(k=0;k<NUM_CPU_TYPES;k++)
    m68ki_cycles[k][ostruct->match | i] = ostruct->cycles[k];
  }
  ostruct++;
 }
 while(ostruct->mask == 0xf1f8)
 {
  for(i = 0;i < 8;i++)
  {
   for(j = 0;j < 8;j++)
   {
    instr = ostruct->match | (i << 9) | j;
    m68ki_instruction_jump_table[instr] = ostruct->opcode_handler;
    for(k=0;k<NUM_CPU_TYPES;k++)
     m68ki_cycles[k][instr] = ostruct->cycles[k];

    if((instr & 0xf000) == 0xe000 && (!(instr & 0x20)))
    {


     cycle_cost = ((((i-1)&7)+1)<<1);
     m68ki_cycles[0][instr] += cycle_cost;
     m68ki_cycles[1][instr] += cycle_cost;

     m68ki_cycles[2][instr] += 0;
    }
   }
  }
  ostruct++;
 }
 while(ostruct->mask == 0xfff0)
 {
  for(i = 0;i <= 0x0f;i++)
  {
   m68ki_instruction_jump_table[ostruct->match | i] = ostruct->opcode_handler;
   for(k=0;k<NUM_CPU_TYPES;k++)
    m68ki_cycles[k][ostruct->match | i] = ostruct->cycles[k];
  }
  ostruct++;
 }
 while(ostruct->mask == 0xf1ff)
 {
  for(i = 0;i <= 0x07;i++)
  {
   m68ki_instruction_jump_table[ostruct->match | (i << 9)] = ostruct->opcode_handler;
   for(k=0;k<NUM_CPU_TYPES;k++)
    m68ki_cycles[k][ostruct->match | (i << 9)] = ostruct->cycles[k];
  }
  ostruct++;
 }
 while(ostruct->mask == 0xfff8)
 {
  for(i = 0;i <= 0x07;i++)
  {
   m68ki_instruction_jump_table[ostruct->match | i] = ostruct->opcode_handler;
   for(k=0;k<NUM_CPU_TYPES;k++)
    m68ki_cycles[k][ostruct->match | i] = ostruct->cycles[k];
  }
  ostruct++;
 }
 while(ostruct->mask == 0xffff)
 {
  m68ki_instruction_jump_table[ostruct->match] = ostruct->opcode_handler;
  for(k=0;k<NUM_CPU_TYPES;k++)
   m68ki_cycles[k][ostruct->match] = ostruct->cycles[k];
  ostruct++;
 }
}
