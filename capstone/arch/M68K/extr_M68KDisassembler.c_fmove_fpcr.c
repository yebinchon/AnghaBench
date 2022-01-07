
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint ;
struct TYPE_9__ {int ir; } ;
typedef TYPE_1__ m68k_info ;
struct TYPE_10__ {int reg; } ;
typedef TYPE_2__ cs_m68k_op ;
struct TYPE_11__ {TYPE_2__* operands; } ;
typedef TYPE_3__ cs_m68k ;


 int M68K_INS_FMOVE ;
 int M68K_REG_FPCR ;
 int M68K_REG_FPIAR ;
 int M68K_REG_FPSR ;
 TYPE_3__* build_init_op (TYPE_1__*,int ,int,int) ;
 int get_ea_mode_op (TYPE_1__*,TYPE_2__*,int ,int) ;

__attribute__((used)) static void fmove_fpcr(m68k_info *info, uint extension)
{
 cs_m68k_op* special;
 cs_m68k_op* op_ea;

 int regsel = (extension >> 10) & 0x7;
 int dir = (extension >> 13) & 0x1;

 cs_m68k* ext = build_init_op(info, M68K_INS_FMOVE, 2, 4);

 special = &ext->operands[0];
 op_ea = &ext->operands[1];

 if (!dir) {
  cs_m68k_op* t = special;
  special = op_ea;
  op_ea = t;
 }

 get_ea_mode_op(info, op_ea, info->ir, 4);

 if (regsel & 4)
  special->reg = M68K_REG_FPCR;
 else if (regsel & 2)
  special->reg = M68K_REG_FPSR;
 else if (regsel & 1)
  special->reg = M68K_REG_FPIAR;
}
