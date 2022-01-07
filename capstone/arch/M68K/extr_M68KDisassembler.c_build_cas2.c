
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint ;
typedef int m68k_info ;
struct TYPE_5__ {int reg_0; int reg_1; } ;
struct TYPE_6__ {TYPE_1__ reg_pair; void* type; void* address_mode; } ;
typedef TYPE_2__ cs_m68k_op ;
struct TYPE_7__ {TYPE_2__* operands; } ;
typedef TYPE_3__ cs_m68k ;


 scalar_t__ BIT_1F (int) ;
 scalar_t__ BIT_F (int) ;
 void* M68K_AM_NONE ;
 int M68K_INS_CAS2 ;
 void* M68K_OP_REG_PAIR ;
 TYPE_3__* build_init_op (int *,int ,int,int) ;
 int instruction_is_valid (int *,int) ;
 int peek_imm_32 (int *) ;
 int read_imm_32 (int *) ;

__attribute__((used)) static void build_cas2(m68k_info *info, int size)
{
 uint word3;
 uint extension;
 cs_m68k_op* op0;
 cs_m68k_op* op1;
 cs_m68k_op* op2;
 cs_m68k* ext = build_init_op(info, M68K_INS_CAS2, 3, size);
 int reg_0, reg_1;


 word3 = peek_imm_32(info) & 0xffff;
 if (!instruction_is_valid(info, word3))
  return;

 op0 = &ext->operands[0];
 op1 = &ext->operands[1];
 op2 = &ext->operands[2];

 extension = read_imm_32(info);

 op0->address_mode = M68K_AM_NONE;
 op0->type = M68K_OP_REG_PAIR;
 op0->reg_pair.reg_0 = (extension >> 16) & 7;
 op0->reg_pair.reg_1 = extension & 7;

 op1->address_mode = M68K_AM_NONE;
 op1->type = M68K_OP_REG_PAIR;
 op1->reg_pair.reg_0 = (extension >> 22) & 7;
 op1->reg_pair.reg_1 = (extension >> 6) & 7;

 reg_0 = (extension >> 28) & 7;
 reg_1 = (extension >> 12) & 7;

 op2->address_mode = M68K_AM_NONE;
 op2->type = M68K_OP_REG_PAIR;
 op2->reg_pair.reg_0 = reg_0 + (BIT_1F(extension) ? 8 : 0);
 op2->reg_pair.reg_1 = reg_1 + (BIT_F(extension) ? 8 : 0);
}
