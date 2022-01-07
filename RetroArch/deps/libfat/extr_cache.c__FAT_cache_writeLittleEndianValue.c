
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int sec_t ;
typedef int CACHE ;


 int _FAT_cache_writePartialSector (int *,int *,int ,unsigned int,int) ;
 int u16_to_u8array (int *,int ,int const) ;
 int u32_to_u8array (int *,int ,int const) ;

bool _FAT_cache_writeLittleEndianValue (CACHE* cache, const uint32_t value, sec_t sector, unsigned int offset, int size)
{
   uint8_t buf[4] = {0, 0, 0, 0};

   switch(size)
   {
      case 1: buf[0] = value; break;
      case 2: u16_to_u8array(buf, 0, value); break;
      case 4: u32_to_u8array(buf, 0, value); break;
      default: return 0;
   }

   return _FAT_cache_writePartialSector(cache, buf, sector, offset, size);
}
