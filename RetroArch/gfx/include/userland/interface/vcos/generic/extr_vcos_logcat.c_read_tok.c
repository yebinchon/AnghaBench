
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (int) ;
 scalar_t__ isspace (int) ;

__attribute__((used)) static int read_tok(char *tok, size_t toklen, const char **pstr, char sep)
{
   const char *str = *pstr;
   size_t n = 0;
   char ch;


   while (str[0] && isspace((int)(str[0])))
      str++;

   while ((ch = *str) != '\0' &&
          ch != sep &&
          (isalnum((int)ch) || (ch == '_') || (ch == '*')) &&
          n != toklen-1)
   {
      tok[n++] = ch;
      str++;
   }


   if (ch == '\0' || ch == sep)
   {
      if (ch) str++;

      tok[n] = '\0';
      *pstr = str;
      return 1;
   }
   else
   {

      return 0;
   }
}
