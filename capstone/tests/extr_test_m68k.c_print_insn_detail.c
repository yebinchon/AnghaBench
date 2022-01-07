
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int disp; int scale; int index_size; int index_reg; int base_reg; } ;
struct TYPE_9__ {size_t address_mode; double simm; int register_bits; int dimm; TYPE_1__ mem; scalar_t__ imm; int reg; scalar_t__ type; } ;
typedef TYPE_2__ cs_m68k_op ;
struct TYPE_10__ {int op_count; TYPE_2__* operands; } ;
typedef TYPE_3__ cs_m68k ;
struct TYPE_11__ {TYPE_5__* detail; } ;
typedef TYPE_4__ cs_insn ;
struct TYPE_12__ {int groups_count; TYPE_3__ m68k; } ;
typedef TYPE_5__ cs_detail ;
 int M68K_REG_INVALID ;
 char* cs_reg_name (int ,int ) ;
 int handle ;
 int print_read_write_regs (TYPE_5__*) ;
 int printf (char*,...) ;
 char** s_addressing_modes ;

__attribute__((used)) static void print_insn_detail(cs_insn *ins)
{
 cs_m68k* m68k;
 cs_detail* detail;
 int i;


 if (ins->detail == ((void*)0))
  return;

 detail = ins->detail;
 m68k = &detail->m68k;
 if (m68k->op_count)
  printf("\top_count: %u\n", m68k->op_count);

 print_read_write_regs(detail);

 printf("\tgroups_count: %u\n", detail->groups_count);

 for (i = 0; i < m68k->op_count; i++) {
  cs_m68k_op* op = &(m68k->operands[i]);

  switch((int)op->type) {
   default:
    break;
   case 129:
    printf("\t\toperands[%u].type: REG = %s\n", i, cs_reg_name(handle, op->reg));
    break;
   case 131:
    printf("\t\toperands[%u].type: IMM = 0x%x\n", i, (int)op->imm);
    break;
   case 130:
    printf("\t\toperands[%u].type: MEM\n", i);
    if (op->mem.base_reg != M68K_REG_INVALID)
     printf("\t\t\toperands[%u].mem.base: REG = %s\n",
       i, cs_reg_name(handle, op->mem.base_reg));
    if (op->mem.index_reg != M68K_REG_INVALID) {
     printf("\t\t\toperands[%u].mem.index: REG = %s\n",
       i, cs_reg_name(handle, op->mem.index_reg));
     printf("\t\t\toperands[%u].mem.index: size = %c\n",
       i, op->mem.index_size ? 'l' : 'w');
    }
    if (op->mem.disp != 0)
     printf("\t\t\toperands[%u].mem.disp: 0x%x\n", i, op->mem.disp);
    if (op->mem.scale != 0)
     printf("\t\t\toperands[%u].mem.scale: %d\n", i, op->mem.scale);

    printf("\t\taddress mode: %s\n", s_addressing_modes[op->address_mode]);
    break;
   case 132:
    printf("\t\toperands[%u].type: FP_SINGLE\n", i);
    printf("\t\t\toperands[%u].simm: %f\n", i, op->simm);
    break;
   case 133:
    printf("\t\toperands[%u].type: FP_DOUBLE\n", i);
    printf("\t\t\toperands[%u].dimm: %lf\n", i, op->dimm);
    break;
   case 128:
    printf("\t\toperands[%u].type: REG_BITS = $%x\n", i, op->register_bits);

  }
 }

 printf("\n");
}
