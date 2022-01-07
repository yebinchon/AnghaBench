
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union string_list_elem_attr {scalar_t__ i; } ;
struct string_list {int dummy; } ;


 char* path_get_archive_delim (char const*) ;
 int string_list_append (struct string_list*,char const*,union string_list_elem_attr) ;
 int string_list_append_n (struct string_list*,char const*,unsigned int,union string_list_elem_attr) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_list_new () ;

__attribute__((used)) static struct string_list *file_archive_filename_split(const char *path)
{
   union string_list_elem_attr attr;
   struct string_list *list = string_list_new();
   const char *delim = path_get_archive_delim(path);

   attr.i = 0;

   if (delim)
   {

      if (!string_list_append_n(list, path, (unsigned)(delim - path), attr))
         goto error;


      delim++;

      if (*delim)
      {
         if (!string_list_append(list, delim, attr))
            goto error;
      }
   }
   else
      if (!string_list_append(list, path, attr))
         goto error;

   return list;

error:
   string_list_free(list);
   return ((void*)0);
}
