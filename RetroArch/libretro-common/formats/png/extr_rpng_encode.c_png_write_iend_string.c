
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;
typedef int intfstream_t ;
typedef int data ;


 int intfstream_write (int *,char const*,int) ;
 int png_write_crc_string (int *,char const*,int) ;

__attribute__((used)) static bool png_write_iend_string(intfstream_t* intf_s)
{
   const uint8_t data[] = {
      0, 0, 0, 0,
      'I', 'E', 'N', 'D',
   };

   if (intfstream_write(intf_s, data, sizeof(data)) != sizeof(data))
      return 0;

   return png_write_crc_string(intf_s, data + sizeof(uint32_t),
         sizeof(data) - sizeof(uint32_t));
}
