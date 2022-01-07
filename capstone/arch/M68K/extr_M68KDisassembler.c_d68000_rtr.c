
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int inst; } ;
typedef TYPE_1__ m68k_info ;


 int M68K_GRP_RET ;
 int M68K_INS_RTR ;
 int MCInst_setOpcode (int ,int ) ;
 int set_insn_group (TYPE_1__*,int ) ;

__attribute__((used)) static void d68000_rtr(m68k_info *info)
{
 set_insn_group(info, M68K_GRP_RET);
 MCInst_setOpcode(info->inst, M68K_INS_RTR);
}
