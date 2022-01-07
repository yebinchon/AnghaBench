
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static void get_old_format_metadata_value(
      char *metadata_line, char *value, size_t len)
{
   char *start = ((void*)0);
   char *end = ((void*)0);

   start = strchr(metadata_line, '\"');

   if (!start)
      return;

   start++;
   end = strchr(start, '\"');

   if (!end)
      return;

   *end = '\0';
   strlcpy(value, start, len);
}
