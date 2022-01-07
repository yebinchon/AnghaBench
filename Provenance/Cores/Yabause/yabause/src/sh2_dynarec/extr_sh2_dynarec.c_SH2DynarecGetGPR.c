
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int SH2_struct ;


 int * MSH2 ;
 int * master_reg ;
 int * slave_reg ;

u32 SH2DynarecGetGPR(SH2_struct *context, int num)
{
  if(context==MSH2)
    return master_reg[num];
  else
    return slave_reg[num];
}
