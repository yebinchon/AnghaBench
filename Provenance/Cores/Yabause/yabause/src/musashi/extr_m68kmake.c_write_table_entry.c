
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int op_mask; int op_match; int* cycles; } ;
typedef TYPE_1__ opcode_struct ;
typedef int FILE ;


 int NUM_CPUS ;
 int fprintf (int *,char*,...) ;

void write_table_entry(FILE* filep, opcode_struct* op)
{
 int i;

 fprintf(filep, "\t{%-28s, 0x%04x, 0x%04x, {",
  op->name, op->op_mask, op->op_match);

 for(i=0;i<NUM_CPUS;i++)
 {
  fprintf(filep, "%3d", op->cycles[i]);
  if(i < NUM_CPUS-1)
   fprintf(filep, ", ");
 }

 fprintf(filep, "}},\n");
}
