
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOP_MOV_REG_LSL (int,int ,int) ;
 int EOP_ORR_REG_SIMPLE (int,int ) ;
 int KRREG_P ;
 int KRREG_X ;
 int KRREG_Y ;
 int SSP_X ;
 int SSP_Y ;
 int dirty_regb ;
 int hostreg_sspreg_changed (int ) ;
 int known_regb ;
 int tr_rX_read (int,int) ;

__attribute__((used)) static void tr_mac_load_XY(int op)
{
 tr_rX_read(op&3, (op>>2)&3);
 EOP_MOV_REG_LSL(4, 0, 16);
 tr_rX_read(((op>>4)&3)|4, (op>>6)&3);
 EOP_ORR_REG_SIMPLE(4, 0);
 dirty_regb |= KRREG_P;
 hostreg_sspreg_changed(SSP_X);
 hostreg_sspreg_changed(SSP_Y);
 known_regb &= ~KRREG_X;
 known_regb &= ~KRREG_Y;
}
