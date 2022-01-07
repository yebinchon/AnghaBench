
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int op_mask; int bits; int name; } ;
typedef TYPE_1__ opcode_struct ;


 scalar_t__ MAX_OPCODE_OUTPUT_TABLE_LENGTH ;
 int error_exit (char*) ;
 TYPE_1__* g_opcode_output_table ;
 scalar_t__ g_opcode_output_table_length ;
 int num_bits (int ) ;
 int strcpy (int ,char*) ;

void add_opcode_output_table_entry(opcode_struct* op, char* name)
{
 opcode_struct* ptr;
 if(g_opcode_output_table_length > MAX_OPCODE_OUTPUT_TABLE_LENGTH)
  error_exit("Opcode output table overflow");

 ptr = g_opcode_output_table + g_opcode_output_table_length++;

 *ptr = *op;
 strcpy(ptr->name, name);
 ptr->bits = num_bits(ptr->op_mask);
}
