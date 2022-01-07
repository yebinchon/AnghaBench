
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int mtmmcr0 (int ) ;
 int mtmmcr1 (int ) ;

void SYS_StartPMC(u32 mcr0val,u32 mcr1val)
{
 mtmmcr0(mcr0val);
 mtmmcr1(mcr1val);
}
