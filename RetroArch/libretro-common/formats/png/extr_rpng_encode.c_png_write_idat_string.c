
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ ssize_t ;
typedef int intfstream_t ;


 scalar_t__ intfstream_write (int *,int const*,size_t) ;
 int png_write_crc_string (int *,int const*,size_t) ;

__attribute__((used)) static bool png_write_idat_string(intfstream_t* intf_s, const uint8_t *data, size_t size)
{
   if (intfstream_write(intf_s, data, size) != (ssize_t)size)
      return 0;

   return png_write_crc_string(intf_s, data + sizeof(uint32_t), size - sizeof(uint32_t));
}
