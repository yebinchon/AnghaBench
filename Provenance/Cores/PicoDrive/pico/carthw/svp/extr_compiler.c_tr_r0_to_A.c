
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOP_MOV_REG_LSL (int,int,int) ;
 int EOP_MOV_REG_LSR (int,int,int) ;
 int EOP_ORR_REG_LSL (int,int,int ,int) ;
 int SSP_A ;
 int TR_WRITE_R0_TO_REG (int ) ;
 scalar_t__ tr_predict_al_need () ;

__attribute__((used)) static void tr_r0_to_A(int const_val)
{
 if (tr_predict_al_need()) {
  EOP_MOV_REG_LSL(5, 5, 16);
  EOP_MOV_REG_LSR(5, 5, 16);
  EOP_ORR_REG_LSL(5, 5, 0, 16);
 }
 else
  EOP_MOV_REG_LSL(5, 0, 16);
 TR_WRITE_R0_TO_REG(SSP_A);
}
