
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int m68k_info ;
struct TYPE_4__ {int imm; int address_mode; int type; } ;
typedef TYPE_1__ cs_m68k_op ;
struct TYPE_5__ {TYPE_1__* operands; } ;
typedef TYPE_2__ cs_m68k ;


 int M68K_AM_IMMEDIATE ;
 int M68K_GRP_JUMP ;
 int M68K_OP_IMM ;
 TYPE_2__* build_init_op (int *,int,int,int) ;
 int set_insn_group (int *,int ) ;

__attribute__((used)) static void build_absolute_jump_with_immediate(m68k_info *info, int opcode, int size, int immediate)
{
 cs_m68k_op* op;
 cs_m68k* ext = build_init_op(info, opcode, 1, size);

 op = &ext->operands[0];

 op->type = M68K_OP_IMM;
 op->address_mode = M68K_AM_IMMEDIATE;
 op->imm = immediate;

 set_insn_group(info, M68K_GRP_JUMP);
}
