
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int RARCH_LOG (char*,unsigned int) ;
 scalar_t__ content_rom_crc ;
 scalar_t__ file_crc32 (int ,char const*) ;
 int pending_content_rom_crc ;
 scalar_t__ pending_content_rom_crc_path ;

uint32_t content_get_crc(void)
{
   if (pending_content_rom_crc)
   {
      pending_content_rom_crc = 0;
      content_rom_crc = file_crc32(0,
            (const char*)pending_content_rom_crc_path);
      RARCH_LOG("CRC32: 0x%x .\n", (unsigned)content_rom_crc);
   }
   return content_rom_crc;
}
