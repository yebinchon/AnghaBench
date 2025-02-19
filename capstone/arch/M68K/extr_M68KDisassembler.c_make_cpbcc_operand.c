
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int disp; int disp_size; } ;
struct TYPE_5__ {TYPE_1__ br_disp; int type; int address_mode; } ;
typedef TYPE_2__ cs_m68k_op ;


 int M68K_AM_BRANCH_DISPLACEMENT ;
 int M68K_OP_BR_DISP ;

__attribute__((used)) static void make_cpbcc_operand(cs_m68k_op* op, int size, int displacement)
{
 op->address_mode = M68K_AM_BRANCH_DISPLACEMENT;
 op->type = M68K_OP_BR_DISP;
 op->br_disp.disp = displacement;
 op->br_disp.disp_size = size;
}
