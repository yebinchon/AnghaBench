
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int SH2_struct ;


 int * MSH2 ;
 int master_pc ;
 int slave_pc ;

u32 SH2DynarecGetPC(SH2_struct *context)
{
  if(context==MSH2)
    return master_pc;
  else
    return slave_pc;
}
