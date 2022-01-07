
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
typedef enum string_list_type { ____Placeholder_string_list_type } string_list_type ;


 scalar_t__ calloc (unsigned int,int) ;
 int string_list_free (struct string_list*) ;
 int string_list_join_concat (char*,unsigned int,struct string_list*,char*) ;
 struct string_list* string_list_new_special (int,void*,unsigned int*,size_t*) ;

const char *char_list_new_special(enum string_list_type type, void *data)
{
   unsigned len = 0;
   size_t list_size;
   struct string_list *s = string_list_new_special(type, data, &len, &list_size);
   char *options = (len > 0) ? (char*)calloc(len, sizeof(char)): ((void*)0);

   if (options && s)
      string_list_join_concat(options, len, s, "|");

   string_list_free(s);
   s = ((void*)0);

   return options;
}
