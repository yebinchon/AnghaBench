
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ir; } ;
typedef TYPE_1__ m68k_info ;


 int M68K_INS_TRAP ;
 int build_absolute_jump_with_immediate (TYPE_1__*,int ,int ,int) ;

__attribute__((used)) static void d68000_trap(m68k_info *info)
{
 build_absolute_jump_with_immediate(info, M68K_INS_TRAP, 0, info->ir&0xf);
}
