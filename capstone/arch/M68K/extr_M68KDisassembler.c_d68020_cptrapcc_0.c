
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint ;
struct TYPE_8__ {TYPE_1__* inst; } ;
typedef TYPE_2__ m68k_info ;
struct TYPE_7__ {int Opcode; } ;


 int LIMIT_CPU_TYPES (TYPE_2__*,int ) ;
 int M68020_PLUS ;
 int M68K_INS_FTRAPF ;
 int build_init_op (TYPE_2__*,int ,int ,int ) ;
 int read_imm_16 (TYPE_2__*) ;

__attribute__((used)) static void d68020_cptrapcc_0(m68k_info *info)
{
 uint extension1;
 LIMIT_CPU_TYPES(info, M68020_PLUS);

 extension1 = read_imm_16(info);

 build_init_op(info, M68K_INS_FTRAPF, 0, 0);


 info->inst->Opcode += (extension1 & 0x2f);
}
