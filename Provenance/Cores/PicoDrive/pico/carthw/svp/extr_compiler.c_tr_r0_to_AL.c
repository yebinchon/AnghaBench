
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* gr; } ;
struct TYPE_3__ {int l; } ;


 int EOP_MOV_REG_LSR (int,int,int) ;
 int EOP_MOV_REG_ROR (int,int,int) ;
 int EOP_ORR_REG_LSL (int,int,int ,int) ;
 size_t SSP_A ;
 int SSP_AL ;
 int hostreg_sspreg_changed (int) ;
 int known_regb ;
 TYPE_2__ known_regs ;

__attribute__((used)) static void tr_r0_to_AL(int const_val)
{
 EOP_MOV_REG_LSR(5, 5, 16);
 EOP_ORR_REG_LSL(5, 5, 0, 16);
 EOP_MOV_REG_ROR(5, 5, 16);
 hostreg_sspreg_changed(SSP_AL);
 if (const_val != -1) {
  known_regs.gr[SSP_A].l = const_val;
  known_regb |= 1 << SSP_AL;
 } else
  known_regb &= ~(1 << SSP_AL);
}
