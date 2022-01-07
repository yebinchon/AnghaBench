
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (size_t) ;
 scalar_t__ string_is_empty (char const*) ;
 int strlcpy (char*,char*,size_t) ;
 size_t strlen (char const*) ;
 char* strstr (char*,char const*) ;

char* string_tokenize(char **str, const char *delim)
{

   char *str_ptr = ((void*)0);
   char *delim_ptr = ((void*)0);
   char *token = ((void*)0);
   size_t token_len = 0;


   if (!str || string_is_empty(delim))
      return ((void*)0);

   str_ptr = *str;



   if (!str_ptr)
      return ((void*)0);


   delim_ptr = strstr(str_ptr, delim);

   if (delim_ptr)
      token_len = delim_ptr - str_ptr;
   else
      token_len = strlen(str_ptr);


   token = (char *)malloc((token_len + 1) * sizeof(char));

   if (!token)
      return ((void*)0);


   strlcpy(token, str_ptr, (token_len + 1) * sizeof(char));
   token[token_len] = '\0';


   *str = delim_ptr ? delim_ptr + strlen(delim) : ((void*)0);

   return token;
}
