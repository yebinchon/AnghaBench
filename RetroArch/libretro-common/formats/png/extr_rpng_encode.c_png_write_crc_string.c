
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int intfstream_t ;
typedef int crc_raw ;


 int dword_write_be (int *,int ) ;
 int encoding_crc32 (int ,int const*,size_t) ;
 int intfstream_write (int *,int *,int) ;

__attribute__((used)) static bool png_write_crc_string(intfstream_t *intf_s, const uint8_t *data, size_t size)
{
   uint8_t crc_raw[4] = {0};
   uint32_t crc = encoding_crc32(0, data, size);

   dword_write_be(crc_raw, crc);
   return intfstream_write(intf_s, crc_raw, sizeof(crc_raw)) == sizeof(crc_raw);
}
