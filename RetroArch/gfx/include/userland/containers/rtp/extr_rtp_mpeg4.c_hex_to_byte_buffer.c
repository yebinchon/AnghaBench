
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int hex_to_nybble (int ) ;

__attribute__((used)) static void hex_to_byte_buffer(const char *hex,
      uint8_t *buffer,
      uint32_t bytes_to_convert)
{
   uint8_t value;

   while (bytes_to_convert--)
   {
      value = hex_to_nybble(*hex++) << 4;
      value |= hex_to_nybble(*hex++);
      *buffer++ = value;
   }
}
