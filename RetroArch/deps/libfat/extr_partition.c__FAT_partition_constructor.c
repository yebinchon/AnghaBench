
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int sec_t ;
typedef int PARTITION ;
typedef int DISC_INTERFACE ;


 int MAX_SECTOR_SIZE ;
 scalar_t__ _FAT_mem_align (int ) ;
 int _FAT_mem_free (int *) ;
 int * _FAT_partition_constructor_buf (int const*,int ,int ,int ,int *) ;

PARTITION* _FAT_partition_constructor (const DISC_INTERFACE* disc, uint32_t cacheSize, uint32_t sectorsPerPage, sec_t startSector)
{
   PARTITION *ret = ((void*)0);
 uint8_t *sectorBuffer = (uint8_t*) _FAT_mem_align(MAX_SECTOR_SIZE);
 if (!sectorBuffer)
      return ((void*)0);

 ret = _FAT_partition_constructor_buf(disc, cacheSize,
   sectorsPerPage, startSector, sectorBuffer);
 _FAT_mem_free(sectorBuffer);
 return ret;
}
