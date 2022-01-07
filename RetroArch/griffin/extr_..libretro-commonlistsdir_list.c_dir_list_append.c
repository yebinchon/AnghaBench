
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;


 int dir_list_read (char const*,struct string_list*,struct string_list*,int,int,int,int) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_split (char const*,char*) ;

bool dir_list_append(struct string_list *list,
      const char *dir,
      const char *ext, bool include_dirs,
      bool include_hidden, bool include_compressed,
      bool recursive)
{
   struct string_list *ext_list = ext ? string_split(ext, "|") : ((void*)0);
   bool ret = dir_list_read(dir, list, ext_list,
         include_dirs, include_hidden, include_compressed, recursive) != -1;

   string_list_free(ext_list);

   return ret;
}
