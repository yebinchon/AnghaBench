
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int ir; TYPE_1__* inst; } ;
typedef TYPE_2__ m68k_info ;
typedef int cs_m68k_op ;
struct TYPE_12__ {int * operands; } ;
typedef TYPE_3__ cs_m68k ;
struct TYPE_10__ {int Opcode; } ;


 int LIMIT_CPU_TYPES (TYPE_2__*,int ) ;
 int M68020_PLUS ;
 int M68K_GRP_BRANCH_RELATIVE ;
 int M68K_GRP_JUMP ;
 int M68K_INS_FBF ;
 int M68K_OP_BR_DISP_SIZE_LONG ;
 TYPE_3__* build_init_op (TYPE_2__*,int ,int,int) ;
 int make_cpbcc_operand (int *,int ,int ) ;
 int read_imm_32 (TYPE_2__*) ;
 int set_insn_group (TYPE_2__*,int ) ;

__attribute__((used)) static void d68020_cpbcc_32(m68k_info *info)
{
 cs_m68k* ext;
 cs_m68k_op* op0;

 LIMIT_CPU_TYPES(info, M68020_PLUS);

 LIMIT_CPU_TYPES(info, M68020_PLUS);


 info->inst->Opcode += (info->ir & 0x2f);

 ext = build_init_op(info, M68K_INS_FBF, 1, 4);
 op0 = &ext->operands[0];

 make_cpbcc_operand(op0, M68K_OP_BR_DISP_SIZE_LONG, read_imm_32(info));

 set_insn_group(info, M68K_GRP_JUMP);
 set_insn_group(info, M68K_GRP_BRANCH_RELATIVE);
}
