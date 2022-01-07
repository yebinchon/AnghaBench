
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOP_MOV_REG_SIMPLE (int ,int) ;
 int SSP_Y ;
 int* hostreg_r ;

__attribute__((used)) static void tr_Y_to_r0(int op)
{
 if (hostreg_r[0] != (SSP_Y<<16)) {
  EOP_MOV_REG_SIMPLE(0, 4);
  hostreg_r[0] = SSP_Y<<16;
 }
}
