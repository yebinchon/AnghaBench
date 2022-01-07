
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inst; } ;
typedef TYPE_1__ m68k_info ;


 int M68K_INS_RESET ;
 int MCInst_setOpcode (int ,int ) ;

__attribute__((used)) static void d68000_reset(m68k_info *info)
{
 MCInst_setOpcode(info->inst, M68K_INS_RESET);
}
