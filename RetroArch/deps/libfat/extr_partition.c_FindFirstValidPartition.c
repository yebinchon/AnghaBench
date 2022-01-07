
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sec_t ;
typedef int DISC_INTERFACE ;


 int FindFirstValidPartition_buf (int const*,int *) ;
 int MAX_SECTOR_SIZE ;
 scalar_t__ _FAT_mem_align (int ) ;
 int _FAT_mem_free (int *) ;

sec_t FindFirstValidPartition(const DISC_INTERFACE* disc)
{
 uint8_t *sectorBuffer = (uint8_t*) _FAT_mem_align(MAX_SECTOR_SIZE);
 if (!sectorBuffer)
      return 0;
 sec_t ret = FindFirstValidPartition_buf(disc, sectorBuffer);
 _FAT_mem_free(sectorBuffer);
 return ret;
}
