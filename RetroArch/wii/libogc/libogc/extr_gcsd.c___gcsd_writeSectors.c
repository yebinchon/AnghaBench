
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ s32 ;


 scalar_t__ CARDIO_ERROR_READY ;
 scalar_t__ sdgecko_writeSectors (int,int ,int ,void const*) ;

__attribute__((used)) static bool __gcsd_writeSectors(int n, u32 sector, u32 numSectors, const void *buffer)
{
 s32 ret;

 ret = sdgecko_writeSectors(n,sector,numSectors,buffer);
 if(ret == CARDIO_ERROR_READY)
  return 1;

 return 0;
}
