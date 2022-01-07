
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union string_list_elem_attr {scalar_t__ i; } ;
struct string_list {int dummy; } ;


 int free (char*) ;
 char* strdup (char const*) ;
 int string_list_append (struct string_list*,char const*,union string_list_elem_attr) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_list_new () ;
 char* strtok_r (char*,char const*,char**) ;

struct string_list *string_split(const char *str, const char *delim)
{
   char *save = ((void*)0);
   char *copy = ((void*)0);
   const char *tmp = ((void*)0);
   struct string_list *list = string_list_new();

   if (!list)
      goto error;

   copy = strdup(str);
   if (!copy)
      goto error;

   tmp = strtok_r(copy, delim, &save);
   while (tmp)
   {
      union string_list_elem_attr attr;

      attr.i = 0;

      if (!string_list_append(list, tmp, attr))
         goto error;

      tmp = strtok_r(((void*)0), delim, &save);
   }

   free(copy);
   return list;

error:
   string_list_free(list);
   free(copy);
   return ((void*)0);
}
