
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef int SH2_struct ;


 size_t GBR ;
 int * MSH2 ;
 void** master_reg ;
 void** slave_reg ;

void SH2DynarecSetGBR(SH2_struct *context, u32 value) {
  if(context==MSH2)
    master_reg[GBR]=value;
  else
    slave_reg[GBR]=value;
}
