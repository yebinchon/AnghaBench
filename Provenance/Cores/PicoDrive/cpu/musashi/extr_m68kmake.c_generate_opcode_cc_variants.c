
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int length; } ;
typedef TYPE_1__ replace_struct ;
struct TYPE_11__ {int op_mask; int op_match; scalar_t__ name; } ;
typedef TYPE_2__ opcode_struct ;
typedef int body_struct ;
typedef int FILE ;


 int ID_OPHANDLER_CC ;
 int ID_OPHANDLER_NOT_CC ;
 int add_replace_string (TYPE_1__*,int ,char*) ;
 int free (TYPE_2__*) ;
 char*** g_cc_table ;
 int generate_opcode_ea_variants (int *,int *,TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 int sprintf (char*,char*,char*) ;
 int strcpy (scalar_t__,char*) ;

void generate_opcode_cc_variants(FILE* filep, body_struct* body, replace_struct* replace, opcode_struct* op_in, int offset)
{
 char repl[20];
 char replnot[20];
 int i;
 int old_length = replace->length;
 opcode_struct* op = malloc(sizeof(opcode_struct));

 *op = *op_in;

 op->op_mask |= 0x0f00;


 for(i=2;i<16;i++)
 {

  sprintf(repl, "COND_%s()", g_cc_table[i][1]);
  sprintf(replnot, "COND_NOT_%s()", g_cc_table[i][1]);

  add_replace_string(replace, ID_OPHANDLER_CC, repl);
  add_replace_string(replace, ID_OPHANDLER_NOT_CC, replnot);


  strcpy(op->name+offset, g_cc_table[i][0]);

  op->op_match = (op->op_match & 0xf0ff) | (i<<8);


  generate_opcode_ea_variants(filep, body, replace, op);

  replace->length = old_length;
 }
 free(op);
}
