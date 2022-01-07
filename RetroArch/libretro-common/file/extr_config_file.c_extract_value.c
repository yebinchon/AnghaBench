
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (int) ;
 char* strdup (char*) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static char *extract_value(char *line, bool is_value)
{
   char *save = ((void*)0);
   char *tok = ((void*)0);

   if (is_value)
   {
      while (isspace((int)*line))
         line++;



      if (*line != '=')
         return ((void*)0);

      line++;
   }

   while (isspace((int)*line))
      line++;


   if (*line == '"')
   {
      line++;
      if (*line == '"')
         return ((void*)0);
      tok = strtok_r(line, "\"", &save);
   }

   else if (*line != '\0')
      tok = strtok_r(line, " \n\t\f\r\v", &save);

   if (tok && *tok)
      return strdup(tok);
   return ((void*)0);
}
