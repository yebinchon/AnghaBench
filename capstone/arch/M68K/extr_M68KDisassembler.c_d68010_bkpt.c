
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ir; } ;
typedef TYPE_1__ m68k_info ;


 int LIMIT_CPU_TYPES (TYPE_1__*,int ) ;
 int M68010_PLUS ;
 int M68K_INS_BKPT ;
 int build_absolute_jump_with_immediate (TYPE_1__*,int ,int ,int) ;

__attribute__((used)) static void d68010_bkpt(m68k_info *info)
{
 LIMIT_CPU_TYPES(info, M68010_PLUS);
 build_absolute_jump_with_immediate(info, M68K_INS_BKPT, 0, info->ir & 7);
}
