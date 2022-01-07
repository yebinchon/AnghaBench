
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* operands; } ;
struct TYPE_8__ {int ir; TYPE_3__ extension; } ;
typedef TYPE_1__ m68k_info ;
struct TYPE_9__ {scalar_t__ reg; int type; int address_mode; } ;
typedef TYPE_2__ cs_m68k_op ;
typedef TYPE_3__ cs_m68k ;


 scalar_t__ BIT_3 (int) ;
 int LIMIT_CPU_TYPES (TYPE_1__*,int ) ;
 int M68020_ONLY ;
 int M68K_AM_NONE ;
 int M68K_GRP_RET ;
 int M68K_INS_RTM ;
 int M68K_OP_REG ;
 scalar_t__ M68K_REG_A0 ;
 scalar_t__ M68K_REG_D0 ;
 int build_absolute_jump_with_immediate (TYPE_1__*,int ,int ,int ) ;
 int set_insn_group (TYPE_1__*,int ) ;

__attribute__((used)) static void d68020_rtm(m68k_info *info)
{
 cs_m68k* ext;
 cs_m68k_op* op;

 set_insn_group(info, M68K_GRP_RET);

 LIMIT_CPU_TYPES(info, M68020_ONLY);

 build_absolute_jump_with_immediate(info, M68K_INS_RTM, 0, 0);

 ext = &info->extension;
 op = &ext->operands[0];

 op->address_mode = M68K_AM_NONE;
 op->type = M68K_OP_REG;

 if (BIT_3(info->ir)) {
  op->reg = M68K_REG_A0 + (info->ir & 7);
 } else {
  op->reg = M68K_REG_D0 + (info->ir & 7);
 }
}
