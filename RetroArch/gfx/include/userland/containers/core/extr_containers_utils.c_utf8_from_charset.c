
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef char uint16_t ;


 int strcmp (char const*,char*) ;

int utf8_from_charset(const char *charset, char *out, unsigned int out_size,
                      const void *in, unsigned int in_size)
{
   unsigned int i;
   const uint16_t *in16 = (const uint16_t *)in;
   const uint8_t *in8 = (const uint8_t *)in;

   if(out_size < 1) return 1;
   if(!strcmp(charset, "UTF16-LE")) goto utf16le;
   if(!strcmp(charset, "UTF8")) goto utf8;
   else return 1;

 utf16le:
   for(i = 0; i < in_size / 2 && in16[i] && i < out_size - 1; i++)
   {
      out[i] = in16[i];
   }
   out[i] = 0;
   return 0;

 utf8:
   for(i = 0; i < in_size && in8[i] && i < out_size - 1; i++)
   {
      out[i] = in8[i];
   }
   out[i] = 0;
   return 0;
}
