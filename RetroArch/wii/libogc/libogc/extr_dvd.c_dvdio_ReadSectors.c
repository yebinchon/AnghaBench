
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sec_t ;
typedef int dvdcmdblk ;


 scalar_t__ DVD_ReadPrio (int *,void*,int,int,int) ;

__attribute__((used)) static bool dvdio_ReadSectors(sec_t sector,sec_t numSectors,void *buffer)
{
 dvdcmdblk blk;

 if(DVD_ReadPrio(&blk, buffer, numSectors<<11, sector << 11, 2) <= 0)
  return 0;

 return 1;
}
