
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mtmmcr0 (int ) ;
 int mtmmcr1 (int ) ;

void SYS_StopPMC()
{
 mtmmcr0(0);
 mtmmcr1(0);
}
