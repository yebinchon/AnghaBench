
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;


 int free (scalar_t__*) ;
 int strlcpy (char*,char const*,size_t) ;
 int utf16_to_char (scalar_t__**,size_t*,int const*) ;

bool utf16_to_char_string(const uint16_t *in, char *s, size_t len)
{
   size_t dest_len = 0;
   uint8_t *utf16_data = ((void*)0);
   bool ret = utf16_to_char(&utf16_data, &dest_len, in);

   if (ret)
   {
      utf16_data[dest_len] = 0;
      strlcpy(s, (const char*)utf16_data, len);
   }

   free(utf16_data);
   utf16_data = ((void*)0);

   return ret;
}
