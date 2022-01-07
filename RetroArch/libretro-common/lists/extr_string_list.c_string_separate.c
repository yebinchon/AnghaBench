
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union string_list_elem_attr {scalar_t__ i; } ;
struct string_list {int dummy; } ;


 int free (char*) ;
 scalar_t__ string_is_empty (char const*) ;
 int string_list_append (struct string_list*,char*,union string_list_elem_attr) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_list_new () ;
 char* string_tokenize (char**,char const*) ;

struct string_list *string_separate(char *str, const char *delim)
{
   char *token = ((void*)0);
   char **str_ptr = ((void*)0);
   struct string_list *list = ((void*)0);


   if (!str || string_is_empty(delim))
      goto error;

   str_ptr = &str;
   list = string_list_new();

   if (!list)
      goto error;

   token = string_tokenize(str_ptr, delim);
   while (token)
   {
      union string_list_elem_attr attr;

      attr.i = 0;

      if (!string_list_append(list, token, attr))
         goto error;

      free(token);
      token = ((void*)0);

      token = string_tokenize(str_ptr, delim);
   }

   return list;

error:
   if (token)
      free(token);
   if (list)
      string_list_free(list);
   return ((void*)0);
}
