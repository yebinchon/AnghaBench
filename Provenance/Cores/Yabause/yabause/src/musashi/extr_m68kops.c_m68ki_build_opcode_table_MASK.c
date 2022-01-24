#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int mask; int match; scalar_t__* cycles; int /*<<< orphan*/  opcode_handler; } ;
typedef  TYPE_1__ opcode_handler_struct ;

/* Variables and functions */
 int NUM_CPU_TYPES ; 
 int /*<<< orphan*/  m68k_op_illegal ; 
 TYPE_1__* m68k_opcode_handler_table ; 
 scalar_t__** m68ki_cycles ; 
 int /*<<< orphan*/ * m68ki_instruction_jump_table ; 

void FUNC0(void)
{
	opcode_handler_struct *ostruct;
	int cycle_cost;
	int instr;
	int i;
	int j;
	int k;

	for(i = 0; i < 0x10000; i++)
	{
		/* default to illegal */
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
				// For all shift operations with known shift distance (encoded in instruction word)
				if((instr & 0xf000) == 0xe000 && (!(instr & 0x20)))
				{
					// On the 68000 and 68010 shift distance affect execution time.
					// Add the cycle cost of shifting; 2 times the shift distance
					cycle_cost = ((((i-1)&7)+1)<<1);
					m68ki_cycles[0][instr] += cycle_cost;
					m68ki_cycles[1][instr] += cycle_cost;
					// On the 68020 shift distance does not affect execution time
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