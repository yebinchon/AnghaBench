
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int * spec_ea; int * spec_proc; int * name; } ;
typedef TYPE_1__ opcode_struct ;


 TYPE_1__* g_opcode_input_table ;
 scalar_t__ strcmp (char*,int *) ;

opcode_struct* find_opcode(char* name, int size, char* spec_proc, char* spec_ea)
{
 opcode_struct* op;


 for(op = g_opcode_input_table;op->name != ((void*)0);op++)
 {
  if( strcmp(name, op->name) == 0 &&
   (size == op->size) &&
   strcmp(spec_proc, op->spec_proc) == 0 &&
   strcmp(spec_ea, op->spec_ea) == 0)
    return op;
 }
 return ((void*)0);
}
