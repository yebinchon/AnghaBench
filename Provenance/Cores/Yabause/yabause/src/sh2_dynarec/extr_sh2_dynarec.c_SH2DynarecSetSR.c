
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef int SH2_struct ;


 int * MSH2 ;
 size_t SR ;
 void** master_reg ;
 void** slave_reg ;

void SH2DynarecSetSR(SH2_struct *context, u32 value) {
  if(context==MSH2)
    master_reg[SR]=value;
  else
    slave_reg[SR]=value;
}
