
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



const char *utf8skip(const char *str, size_t chars)
{
   const uint8_t *strb = (const uint8_t*)str;
   if (!chars)
      return str;
   do
   {
      strb++;
      while ((*strb & 0xC0)==0x80) strb++;
      chars--;
   } while(chars);
   return (const char*)strb;
}
