
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef char uint16_t ;


 scalar_t__ malloc (size_t) ;
 int utf16_conv_utf8 (int *,size_t*,char const*,unsigned int) ;

__attribute__((used)) static bool utf16_to_char(uint8_t **utf_data,
      size_t *dest_len, const uint16_t *in)
{
   unsigned len = 0;

   while (in[len] != '\0')
      len++;

   utf16_conv_utf8(((void*)0), dest_len, in, len);
   *dest_len += 1;
   *utf_data = (uint8_t*)malloc(*dest_len);
   if (*utf_data == 0)
      return 0;

   return utf16_conv_utf8(*utf_data, dest_len, in, len);
}
