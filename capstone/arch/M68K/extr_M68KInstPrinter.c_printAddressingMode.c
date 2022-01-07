
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {char base_reg; char index_reg; char out_disp; char offset; char width; scalar_t__ bitfield; int scale; int index_size; int in_disp; int disp; } ;
struct TYPE_10__ {int disp; } ;
struct TYPE_13__ {int address_mode; size_t reg; TYPE_3__ mem; TYPE_1__ br_disp; int imm; int dimm; int simm; int type; } ;
typedef TYPE_4__ cs_m68k_op ;
struct TYPE_11__ {int fpu_size; int type; } ;
struct TYPE_14__ {TYPE_2__ op_size; } ;
typedef TYPE_5__ cs_m68k ;
typedef int SStream ;
 int M68K_FPU_SIZE_DOUBLE ;
 int M68K_FPU_SIZE_SINGLE ;



 char M68K_REG_A0 ;
 size_t M68K_REG_D0 ;
 char M68K_REG_INVALID ;
 int M68K_SIZE_TYPE_FPU ;
 int SStream_concat (int *,char*,...) ;
 int abs (int ) ;
 char getRegName (char) ;
 int registerBits (int *,TYPE_4__ const*) ;
 int registerPair (int *,TYPE_4__ const*) ;
 int * s_reg_names ;
 char s_spacing ;

__attribute__((used)) static void printAddressingMode(SStream* O, unsigned int pc, const cs_m68k* inst, const cs_m68k_op* op)
{
 switch (op->address_mode) {
  case 142:
   switch (op->type) {
    case 129:
     registerBits(O, op);
     break;
    case 128:
     registerPair(O, op);
     break;
    case 130:
     SStream_concat(O, "%s", s_reg_names[op->reg]);
     break;
    default:
     break;
   }
   break;

  case 131: SStream_concat(O, "d%d", (op->reg - M68K_REG_D0)); break;
  case 132: SStream_concat(O, "a%d", (op->reg - M68K_REG_A0)); break;
  case 136: SStream_concat(O, "(a%d)", (op->reg - M68K_REG_A0)); break;
  case 134: SStream_concat(O, "(a%d)+", (op->reg - M68K_REG_A0)); break;
  case 133: SStream_concat(O, "-(a%d)", (op->reg - M68K_REG_A0)); break;
  case 135: SStream_concat(O, "%s$%x(a%d)", op->mem.disp < 0 ? "-" : "", abs(op->mem.disp), (op->mem.base_reg - M68K_REG_A0)); break;
  case 141: SStream_concat(O, "$%x(pc)", pc + 2 + op->mem.disp); break;
  case 149: SStream_concat(O, "$%x.w", op->imm); break;
  case 150: SStream_concat(O, "$%x.l", op->imm); break;
  case 145:
    if (inst->op_size.type == M68K_SIZE_TYPE_FPU) {





     if (inst->op_size.fpu_size == M68K_FPU_SIZE_SINGLE)
      SStream_concat(O, "#%f", op->simm);
     else if (inst->op_size.fpu_size == M68K_FPU_SIZE_DOUBLE)
      SStream_concat(O, "#%f", op->dimm);
     else
      SStream_concat(O, "#<unsupported>");
     break;

    }
    SStream_concat(O, "#$%x", op->imm);
    break;
  case 140:
   SStream_concat(O, "$%x(pc,%s%s.%c)", pc + 2 + op->mem.disp, s_spacing, getRegName(op->mem.index_reg), op->mem.index_size ? 'l' : 'w');
   break;
  case 148:
   SStream_concat(O, "%s$%x(%s,%s%s.%c)", op->mem.disp < 0 ? "-" : "", abs(op->mem.disp), getRegName(op->mem.base_reg), s_spacing, getRegName(op->mem.index_reg), op->mem.index_size ? 'l' : 'w');
   break;
  case 139:
  case 147:

   if (op->address_mode == 139) {
    SStream_concat(O, "$%x", pc + 2 + op->mem.in_disp);
   } else {
    if (op->mem.in_disp > 0)
     SStream_concat(O, "$%x", op->mem.in_disp);
   }

   SStream_concat(O, "(");

   if (op->address_mode == 139) {
       SStream_concat(O, "pc,%s.%c", getRegName(op->mem.index_reg), op->mem.index_size ? 'l' : 'w');
   } else {
    if (op->mem.base_reg != M68K_REG_INVALID)
     SStream_concat(O, "a%d,%s", op->mem.base_reg - M68K_REG_A0, s_spacing);
    SStream_concat(O, "%s.%c", getRegName(op->mem.index_reg), op->mem.index_size ? 'l' : 'w');
   }

   if (op->mem.scale > 0)
       SStream_concat(O, "%s*%s%d)", s_spacing, s_spacing, op->mem.scale);
   else
       SStream_concat(O, ")");
   break;



  case 138:
  case 137:
  case 143:
  case 144:
   SStream_concat(O, "([");

   if (op->address_mode == 138 || op->address_mode == 137) {
    SStream_concat(O, "$%x", pc + 2 + op->mem.in_disp);
   } else {
    if (op->mem.in_disp > 0)
     SStream_concat(O, "$%x", op->mem.in_disp);
   }

   if (op->mem.base_reg != M68K_REG_INVALID) {
    if (op->mem.in_disp > 0)
     SStream_concat(O, ",%s%s", s_spacing, getRegName(op->mem.base_reg));
    else
     SStream_concat(O, "%s", getRegName(op->mem.base_reg));
   }

   if (op->address_mode == 144 || op->address_mode == 138)
       SStream_concat(O, "]");

   if (op->mem.index_reg != M68K_REG_INVALID)
       SStream_concat(O, ",%s%s.%c", s_spacing, getRegName(op->mem.index_reg), op->mem.index_size ? 'l' : 'w');

   if (op->mem.scale > 0)
       SStream_concat(O, "%s*%s%d", s_spacing, s_spacing, op->mem.scale);

   if (op->address_mode == 143 || op->address_mode == 137)
       SStream_concat(O, "]");

   if (op->mem.out_disp > 0)
       SStream_concat(O, ",%s$%x", s_spacing, op->mem.out_disp);

   SStream_concat(O, ")");
   break;
  case 146:
   SStream_concat(O, "$%x", pc + 2 + op->br_disp.disp);
  default:
   break;
 }

 if (op->mem.bitfield)
  SStream_concat(O, "{%d:%d}", op->mem.offset, op->mem.width);
}
