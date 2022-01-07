
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int csh ;
typedef int cs_mode ;
struct TYPE_8__ {char disp; char scale; int index_size; int index_reg; int base_reg; } ;
struct TYPE_9__ {size_t address_mode; char simm; char dimm; TYPE_1__ mem; scalar_t__ imm; int reg; scalar_t__ type; } ;
typedef TYPE_2__ cs_m68k_op ;
struct TYPE_10__ {int op_count; TYPE_2__* operands; } ;
typedef TYPE_3__ cs_m68k ;
struct TYPE_11__ {TYPE_5__* detail; } ;
typedef TYPE_4__ cs_insn ;
struct TYPE_12__ {int groups_count; TYPE_3__ m68k; } ;
typedef TYPE_5__ cs_detail ;







 int M68K_REG_INVALID ;
 int add_str (char**,char*,int,...) ;
 char cs_reg_name (int ,int ) ;
 scalar_t__ malloc (int) ;
 int print_read_write_regs (char*,TYPE_5__*,int *) ;
 int * s_addressing_modes ;

char *get_detail_m68k(csh *handle, cs_mode mode, cs_insn *ins)
{
 cs_m68k* m68k;
 cs_detail* detail;
 int i;
 char *result;

 result = (char *)malloc(sizeof(char));
 result[0] = '\0';

 if (ins->detail == ((void*)0))
  return result;


 detail = ins->detail;
 m68k = &detail->m68k;
 if (m68k->op_count)
  add_str(&result, " ; op_count: %u", m68k->op_count);

 print_read_write_regs(result, detail, handle);

 add_str(&result, " ; groups_count: %u", detail->groups_count);

 for (i = 0; i < m68k->op_count; i++) {
  cs_m68k_op* op = &(m68k->operands[i]);

  switch((int)op->type) {
   default:
    break;
   case 128:
    add_str(&result, " ; operands[%u].type: REG = %s", i, cs_reg_name(*handle, op->reg));
    break;
   case 130:
    add_str(&result, " ; operands[%u].type: IMM = 0x%x", i, (int)op->imm);
    break;
   case 129:
    add_str(&result, " ; operands[%u].type: MEM", i);
    if (op->mem.base_reg != M68K_REG_INVALID)
     add_str(&result, " ; operands[%u].mem.base: REG = %s", i, cs_reg_name(*handle, op->mem.base_reg));
    if (op->mem.index_reg != M68K_REG_INVALID) {
     add_str(&result, " ; operands[%u].mem.index: REG = %s", i, cs_reg_name(*handle, op->mem.index_reg));
     add_str(&result, " ; operands[%u].mem.index: size = %c", i, op->mem.index_size ? 'l' : 'w');
    }
    if (op->mem.disp != 0)
     add_str(&result, " ; operands[%u].mem.disp: 0x%x", i, op->mem.disp);
    if (op->mem.scale != 0)
     add_str(&result, " ; operands[%u].mem.scale: %d", i, op->mem.scale);

    add_str(&result, " ; address mode: %s", s_addressing_modes[op->address_mode]);
    break;
   case 131:
    add_str(&result, " ; operands[%u].type: FP_SINGLE", i);
    add_str(&result, " ; operands[%u].simm: %f", i, op->simm);
    break;
   case 132:
    add_str(&result, " ; operands[%u].type: FP_DOUBLE", i);
    add_str(&result, " ; operands[%u].dimm: %lf", i, op->dimm);
    break;
  }
 }

 return result;
}
