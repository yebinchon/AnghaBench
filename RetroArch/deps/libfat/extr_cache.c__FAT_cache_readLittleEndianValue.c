
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int sec_t ;
typedef int CACHE ;


 int _FAT_cache_readPartialSector (int *,int *,int ,unsigned int,int) ;
 int u8array_to_u16 (int *,int ) ;
 int u8array_to_u32 (int *,int ) ;

bool _FAT_cache_readLittleEndianValue (CACHE* cache, uint32_t *value, sec_t sector, unsigned int offset, int num_bytes)
{
  uint8_t buf[4];
  if (!_FAT_cache_readPartialSector(cache, buf, sector, offset, num_bytes)) return 0;

  switch(num_bytes)
  {
     case 1: *value = buf[0]; break;
     case 2: *value = u8array_to_u16(buf,0); break;
     case 4: *value = u8array_to_u32(buf,0); break;
     default: return 0;
  }
  return 1;
}
