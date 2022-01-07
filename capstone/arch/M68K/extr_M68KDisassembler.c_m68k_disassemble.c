
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_15__ {int type; } ;
struct TYPE_18__ {TYPE_2__* operands; TYPE_1__ op_size; } ;
struct TYPE_17__ {size_t ir; unsigned int pc; TYPE_4__ extension; TYPE_5__* inst; } ;
typedef TYPE_3__ m68k_info ;
typedef TYPE_4__ cs_m68k ;
struct TYPE_19__ {int Opcode; } ;
struct TYPE_16__ {int type; } ;
struct TYPE_14__ {int (* instruction ) (TYPE_3__*) ;} ;
typedef TYPE_5__ MCInst ;


 int M68K_INS_INVALID ;
 int M68K_OPERAND_COUNT ;
 int M68K_OP_REG ;
 int M68K_SIZE_TYPE_CPU ;
 int build_opcode_table () ;
 TYPE_13__* g_instruction_table ;
 scalar_t__ instruction_is_valid (TYPE_3__*,int) ;
 int memset (TYPE_4__*,int ,int) ;
 size_t peek_imm_16 (TYPE_3__*) ;
 int peek_imm_32 (TYPE_3__*) ;
 size_t read_imm_16 (TYPE_3__*) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static unsigned int m68k_disassemble(m68k_info *info, uint64_t pc)
{
 MCInst *inst = info->inst;
 cs_m68k* ext = &info->extension;
 int i;
 unsigned int size;

 inst->Opcode = M68K_INS_INVALID;

 build_opcode_table();

 memset(ext, 0, sizeof(cs_m68k));
 ext->op_size.type = M68K_SIZE_TYPE_CPU;

 for (i = 0; i < M68K_OPERAND_COUNT; ++i)
  ext->operands[i].type = M68K_OP_REG;

 info->ir = peek_imm_16(info);
 if (instruction_is_valid(info, peek_imm_32(info) & 0xffff)) {
  info->ir = read_imm_16(info);
  g_instruction_table[info->ir].instruction(info);
 }

 size = info->pc - (unsigned int)pc;
 info->pc = (unsigned int)pc;

 return size;
}
