
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint ;
struct TYPE_13__ {int ir; } ;
typedef TYPE_2__ m68k_info ;
struct TYPE_12__ {int reg_0; int reg_1; } ;
struct TYPE_14__ {scalar_t__ reg; int type; TYPE_1__ reg_pair; int address_mode; } ;
typedef TYPE_3__ cs_m68k_op ;
struct TYPE_15__ {TYPE_3__* operands; } ;
typedef TYPE_4__ cs_m68k ;


 int BIT_A (int) ;
 scalar_t__ BIT_B (int) ;
 int LIMIT_CPU_TYPES (TYPE_2__*,int ) ;
 int M68020_PLUS ;
 int M68K_AM_NONE ;
 int M68K_INS_DIVS ;
 int M68K_INS_DIVU ;
 int M68K_OP_REG ;
 int M68K_OP_REG_PAIR ;
 scalar_t__ M68K_REG_D0 ;
 TYPE_4__* build_init_op (TYPE_2__*,int ,int,int) ;
 int get_ea_mode_op (TYPE_2__*,TYPE_3__*,int ,int) ;
 int read_imm_16 (TYPE_2__*) ;

__attribute__((used)) static void d68020_divl(m68k_info *info)
{
 uint extension, insn_signed;
 cs_m68k* ext;
 cs_m68k_op* op0;
 cs_m68k_op* op1;
 uint reg_0, reg_1;

 LIMIT_CPU_TYPES(info, M68020_PLUS);

 extension = read_imm_16(info);
 insn_signed = 0;

 if (BIT_B((extension)))
  insn_signed = 1;

 ext = build_init_op(info, insn_signed ? M68K_INS_DIVS : M68K_INS_DIVU, 2, 4);

 op0 = &ext->operands[0];
 op1 = &ext->operands[1];

 get_ea_mode_op(info, op0, info->ir, 4);

 reg_0 = extension & 7;
 reg_1 = (extension >> 12) & 7;

 op1->address_mode = M68K_AM_NONE;
 op1->type = M68K_OP_REG_PAIR;
 op1->reg_pair.reg_0 = reg_0;
 op1->reg_pair.reg_1 = reg_1;

 if ((reg_0 == reg_1) || !BIT_A(extension)) {
  op1->type = M68K_OP_REG;
  op1->reg = M68K_REG_D0 + reg_1;
 }
}
