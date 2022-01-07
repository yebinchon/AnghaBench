
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mtpmc1 (int ) ;
 int mtpmc2 (int ) ;
 int mtpmc3 (int ) ;
 int mtpmc4 (int ) ;

void SYS_ResetPMC()
{
 mtpmc1(0);
 mtpmc2(0);
 mtpmc3(0);
 mtpmc4(0);
}
