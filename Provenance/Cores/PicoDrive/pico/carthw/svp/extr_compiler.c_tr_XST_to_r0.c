
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOP_ADD_IMM (int ,int,int,int) ;
 int EOP_LDRH_IMM (int ,int ,int) ;
 int SSP_XST ;

__attribute__((used)) static void tr_XST_to_r0(int op)
{
 EOP_ADD_IMM(0, 7, 24/2, 4);
 EOP_LDRH_IMM(0, 0, SSP_XST*4+2);
}
