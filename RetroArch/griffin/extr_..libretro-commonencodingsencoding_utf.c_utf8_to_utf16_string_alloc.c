
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CP_ACP ;
 int CP_UTF8 ;
 size_t MultiByteToWideChar (int ,int ,char const*,int,int *,size_t) ;
 scalar_t__ calloc (size_t,int) ;
 int free (int *) ;
 int mbstowcs (int *,char const*,size_t) ;

wchar_t* utf8_to_utf16_string_alloc(const char *str)
{




   size_t len = 0;
   size_t out_len = 0;

   wchar_t *buf = ((void*)0);

   if (!str || !*str)
      return ((void*)0);
   len = mbstowcs(((void*)0), str, 0) + 1;

   if (len)
   {
      buf = (wchar_t*)calloc(len, sizeof(wchar_t));

      if (!buf)
         return ((void*)0);

      out_len = mbstowcs(buf, str, len);
   }

   if (out_len == (size_t)-1)
   {
      free(buf);
      return ((void*)0);
   }


   return buf;
}
