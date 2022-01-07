
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __gcsd_readSectors (int,int ,int ,void*) ;

__attribute__((used)) static bool __gcsdb_readSectors(u32 sector, u32 numSectors, void *buffer)
{
 return __gcsd_readSectors(1, sector, numSectors, buffer);
}
