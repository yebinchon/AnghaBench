
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;


 int dir_list_append (struct string_list*,char const*,char const*,int,int,int,int) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_list_new () ;

struct string_list *dir_list_new(const char *dir,
      const char *ext, bool include_dirs,
      bool include_hidden, bool include_compressed,
      bool recursive)
{
   struct string_list *list = ((void*)0);

   if (!(list = string_list_new()))
      return ((void*)0);

   if (!dir_list_append(list, dir, ext, include_dirs,
            include_hidden, include_compressed, recursive))
   {
      string_list_free(list);
      return ((void*)0);
   }

   return list;
}
