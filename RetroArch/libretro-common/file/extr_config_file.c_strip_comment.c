
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;
 int string_is_empty (char*) ;
 int strlen (char*) ;

__attribute__((used)) static char *strip_comment(char *str)
{


   char *string_end = str + strlen(str);
   bool cut_comment = 1;

   while (!string_is_empty(str))
   {
      char *comment = ((void*)0);
      char *literal = strchr(str, '\"');
      if (!literal)
         literal = string_end;
      comment = (char*)strchr(str, '#');

      if (!comment)
         comment = string_end;

      if (cut_comment && literal < comment)
      {
         cut_comment = 0;
         str = literal + 1;
      }
      else if (!cut_comment && literal)
      {
         cut_comment = 1;
         str = (literal < string_end) ? literal + 1 : string_end;
      }
      else
      {
         *comment = '\0';
         str = comment;
      }
   }

   return str;
}
