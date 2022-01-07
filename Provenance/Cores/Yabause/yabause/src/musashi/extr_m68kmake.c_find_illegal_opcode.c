
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * name; } ;
typedef TYPE_1__ opcode_struct ;


 TYPE_1__* g_opcode_input_table ;
 scalar_t__ strcmp (int *,char*) ;

opcode_struct* find_illegal_opcode(void)
{
 opcode_struct* op;

 for(op = g_opcode_input_table;op->name != ((void*)0);op++)
 {
  if(strcmp(op->name, "illegal") == 0)
   return op;
 }
 return ((void*)0);
}
