
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint ;
struct TYPE_11__ {TYPE_1__* inst; } ;
typedef TYPE_2__ m68k_info ;
struct TYPE_12__ {int imm; int type; int address_mode; } ;
typedef TYPE_3__ cs_m68k_op ;
struct TYPE_13__ {TYPE_3__* operands; } ;
typedef TYPE_4__ cs_m68k ;
struct TYPE_10__ {int Opcode; } ;


 int LIMIT_CPU_TYPES (TYPE_2__*,int ) ;
 int M68020_PLUS ;
 int M68K_AM_IMMEDIATE ;
 int M68K_INS_FTRAPF ;
 int M68K_OP_IMM ;
 TYPE_4__* build_init_op (TYPE_2__*,int ,int,int) ;
 int read_imm_16 (TYPE_2__*) ;

__attribute__((used)) static void d68020_cptrapcc_16(m68k_info *info)
{
 uint extension1, extension2;
 cs_m68k_op* op0;
 cs_m68k* ext;

 LIMIT_CPU_TYPES(info, M68020_PLUS);

 extension1 = read_imm_16(info);
 extension2 = read_imm_16(info);

 ext = build_init_op(info, M68K_INS_FTRAPF, 1, 2);


 info->inst->Opcode += (extension1 & 0x2f);

 op0 = &ext->operands[0];

 op0->address_mode = M68K_AM_IMMEDIATE;
 op0->type = M68K_OP_IMM;
 op0->imm = extension2;
}
