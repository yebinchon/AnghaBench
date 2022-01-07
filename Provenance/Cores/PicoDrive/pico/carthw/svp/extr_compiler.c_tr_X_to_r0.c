
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOP_MOV_REG_LSR (int ,int,int) ;
 int SSP_X ;
 int* hostreg_r ;

__attribute__((used)) static void tr_X_to_r0(int op)
{
 if (hostreg_r[0] != (SSP_X<<16)) {
  EOP_MOV_REG_LSR(0, 4, 16);
  hostreg_r[0] = SSP_X<<16;
 }
}
