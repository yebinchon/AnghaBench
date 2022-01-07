
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int size; TYPE_1__* elems; } ;
struct file_archive_file_backend {int (* compressed_file_read ) (int ,int ,void**,char const*) ;} ;
typedef int int64_t ;
struct TYPE_2__ {int data; } ;


 struct string_list* file_archive_filename_split (char const*) ;
 struct file_archive_file_backend* file_archive_get_file_backend (int ) ;
 scalar_t__ path_is_valid (char const*) ;
 int string_list_free (struct string_list*) ;
 int stub1 (int ,int ,void**,char const*) ;

int file_archive_compressed_read(
      const char * path, void **buf,
      const char* optional_filename, int64_t *length)
{
   const struct
      file_archive_file_backend *backend = ((void*)0);
   struct string_list *str_list = ((void*)0);







   if (optional_filename && path_is_valid(optional_filename))
   {
      *length = 0;
      return 1;
   }

   str_list = file_archive_filename_split(path);






   if (str_list->size <= 1)
   {

      string_list_free(str_list);
      *length = 0;
      return 0;
   }

   backend = file_archive_get_file_backend(str_list->elems[0].data);
   *length = backend->compressed_file_read(str_list->elems[0].data,
         str_list->elems[1].data, buf, optional_filename);

   string_list_free(str_list);

   if (*length != -1)
      return 1;

   return 0;
}
