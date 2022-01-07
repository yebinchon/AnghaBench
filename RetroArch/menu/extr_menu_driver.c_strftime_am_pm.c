
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;


 int free (char*) ;
 char* local_to_utf8_string_alloc (char*) ;
 int strftime (char*,size_t,char const*,struct tm const*) ;
 int string_is_empty (char*) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static void strftime_am_pm(char* ptr, size_t maxsize, const char* format,
      const struct tm* timeptr)
{
   char *local = ((void*)0);


   strftime(ptr, maxsize, format, timeptr);
}
