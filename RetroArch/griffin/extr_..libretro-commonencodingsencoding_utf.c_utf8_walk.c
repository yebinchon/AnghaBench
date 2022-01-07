
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int utf8_walkbyte (char const**) ;

uint32_t utf8_walk(const char **string)
{
   uint8_t first = utf8_walkbyte(string);
   uint32_t ret = 0;

   if (first < 128)
      return first;

   ret = (ret << 6) | (utf8_walkbyte(string) & 0x3F);
   if (first >= 0xE0)
   {
      ret = (ret << 6) | (utf8_walkbyte(string) & 0x3F);
      if (first >= 0xF0)
      {
         ret = (ret << 6) | (utf8_walkbyte(string) & 0x3F);
         return ret | (first & 7) << 18;
      }
      return ret | (first & 15) << 12;
   }

   return ret | (first & 31) << 6;
}
