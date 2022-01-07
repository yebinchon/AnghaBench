
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CODEPAGE_LOCAL ;
 int CODEPAGE_UTF8 ;
 char* mb_to_mb_string_alloc (char const*,int ,int ) ;
 char* strdup (char const*) ;

char* local_to_utf8_string_alloc(const char *str)
{
   if (str && *str)
   {




      return strdup(str);

   }
   return ((void*)0);
}
