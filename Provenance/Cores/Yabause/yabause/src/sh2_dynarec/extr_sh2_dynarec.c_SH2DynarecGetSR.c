
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int SH2_struct ;


 int * MSH2 ;
 size_t SR ;
 int * master_reg ;
 int * slave_reg ;

u32 SH2DynarecGetSR(SH2_struct *context)
{
  if(context==MSH2)
    return master_reg[SR];
  else
    return slave_reg[SR];
}
