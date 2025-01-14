
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint ;
struct TYPE_10__ {int ir; } ;
typedef TYPE_1__ m68k_info ;
struct TYPE_11__ {void* reg; } ;
typedef TYPE_2__ cs_m68k_op ;
struct TYPE_12__ {TYPE_2__* operands; } ;
typedef TYPE_3__ cs_m68k ;


 scalar_t__ BIT_B (int) ;
 scalar_t__ BIT_F (int) ;
 int M68K_INS_MOVES ;
 void* M68K_REG_A0 ;
 void* M68K_REG_D0 ;
 TYPE_3__* build_init_op (TYPE_1__*,int ,int,int) ;
 int get_ea_mode_op (TYPE_1__*,TYPE_2__*,int ,int) ;
 int read_imm_16 (TYPE_1__*) ;

__attribute__((used)) static void build_moves(m68k_info *info, int size)
{
 cs_m68k_op* op0;
 cs_m68k_op* op1;
 cs_m68k* ext = build_init_op(info, M68K_INS_MOVES, 2, size);
 uint extension = read_imm_16(info);

 op0 = &ext->operands[0];
 op1 = &ext->operands[1];

 if (BIT_B(extension)) {
  op0->reg = (BIT_F(extension) ? M68K_REG_A0 : M68K_REG_D0) + ((extension >> 12) & 7);
  get_ea_mode_op(info, op1, info->ir, size);
 } else {
  get_ea_mode_op(info, op0, info->ir, size);
  op1->reg = (BIT_F(extension) ? M68K_REG_A0 : M68K_REG_D0) + ((extension >> 12) & 7);
 }
}
