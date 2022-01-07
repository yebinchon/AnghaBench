
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ir; } ;
typedef TYPE_1__ m68k_info ;
struct TYPE_9__ {int * operands; } ;
typedef TYPE_2__ cs_m68k ;


 int LIMIT_CPU_TYPES (TYPE_1__*,int ) ;
 int M68020_PLUS ;
 int M68K_INS_FRESTORE ;
 TYPE_2__* build_init_op (TYPE_1__*,int ,int,int ) ;
 int get_ea_mode_op (TYPE_1__*,int *,int ,int) ;

__attribute__((used)) static void d68020_cprestore(m68k_info *info)
{
 cs_m68k* ext;
 LIMIT_CPU_TYPES(info, M68020_PLUS);

 ext = build_init_op(info, M68K_INS_FRESTORE, 1, 0);
 get_ea_mode_op(info, &ext->operands[0], info->ir, 1);
}
