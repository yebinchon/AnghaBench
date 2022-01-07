
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int Cs2GetIP (int) ;

u8 Cs2GetRegionID(void)
{
   return Cs2GetIP(1);
}
