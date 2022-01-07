
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int m68k_info ;
struct TYPE_5__ {int disp; int disp_size; } ;
struct TYPE_6__ {TYPE_1__ br_disp; int address_mode; int type; } ;
typedef TYPE_2__ cs_m68k_op ;
struct TYPE_7__ {TYPE_2__* operands; } ;
typedef TYPE_3__ cs_m68k ;


 int M68K_AM_BRANCH_DISPLACEMENT ;
 int M68K_GRP_BRANCH_RELATIVE ;
 int M68K_GRP_JUMP ;
 int M68K_OP_BR_DISP ;
 TYPE_3__* build_init_op (int *,int,int,int) ;
 int set_insn_group (int *,int ) ;

__attribute__((used)) static void build_relative_branch(m68k_info *info, int opcode, int size, int displacement)
{
 cs_m68k_op* op;
 cs_m68k* ext = build_init_op(info, opcode, 1, size);

 op = &ext->operands[0];

 op->type = M68K_OP_BR_DISP;
 op->address_mode = M68K_AM_BRANCH_DISPLACEMENT;
 op->br_disp.disp = displacement;
 op->br_disp.disp_size = size;

 set_insn_group(info, M68K_GRP_JUMP);
 set_insn_group(info, M68K_GRP_BRANCH_RELATIVE);
}
