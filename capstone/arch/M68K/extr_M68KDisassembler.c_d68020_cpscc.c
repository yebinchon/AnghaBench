
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int ir; TYPE_1__* inst; } ;
typedef TYPE_2__ m68k_info ;
struct TYPE_12__ {int * operands; } ;
typedef TYPE_3__ cs_m68k ;
struct TYPE_10__ {int Opcode; } ;


 int LIMIT_CPU_TYPES (TYPE_2__*,int ) ;
 int M68020_PLUS ;
 int M68K_INS_FSF ;
 TYPE_3__* build_init_op (TYPE_2__*,int ,int,int) ;
 int get_ea_mode_op (TYPE_2__*,int *,int ,int) ;
 int read_imm_16 (TYPE_2__*) ;

__attribute__((used)) static void d68020_cpscc(m68k_info *info)
{
 cs_m68k* ext;

 LIMIT_CPU_TYPES(info, M68020_PLUS);
 ext = build_init_op(info, M68K_INS_FSF, 1, 1);


 info->inst->Opcode += (read_imm_16(info) & 0x2f);

 get_ea_mode_op(info, &ext->operands[0], info->ir, 1);
}
