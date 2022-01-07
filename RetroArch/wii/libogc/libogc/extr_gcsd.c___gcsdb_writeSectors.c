
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __gcsd_writeSectors (int,int ,int ,void*) ;

__attribute__((used)) static bool __gcsdb_writeSectors(u32 sector, u32 numSectors, void *buffer)
{
 return __gcsd_writeSectors(1, sector, numSectors, buffer);
}
