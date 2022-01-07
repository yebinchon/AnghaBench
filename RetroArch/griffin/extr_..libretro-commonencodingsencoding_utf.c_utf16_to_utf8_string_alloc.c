
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 int CP_ACP ;
 int CP_UTF8 ;
 size_t WideCharToMultiByte (int ,int ,int const*,int,char*,size_t,int *,int *) ;
 scalar_t__ calloc (size_t,int) ;
 int free (char*) ;
 size_t wcstombs (char*,int const*,size_t) ;

char* utf16_to_utf8_string_alloc(const wchar_t *str)
{



   size_t len = 0;

   char *buf = ((void*)0);

   if (!str || !*str)
      return ((void*)0);
   len = wcstombs(((void*)0), str, 0) + 1;

   if (len)
   {
      buf = (char*)calloc(len, sizeof(char));

      if (!buf)
         return ((void*)0);

      if (wcstombs(buf, str, len) == (size_t)-1)
      {
         free(buf);
         return ((void*)0);
      }
   }


   return buf;
}
