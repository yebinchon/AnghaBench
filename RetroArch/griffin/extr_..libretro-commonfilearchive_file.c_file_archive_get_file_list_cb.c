
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union string_list_elem_attr {scalar_t__ i; } ;
typedef int uint8_t ;
typedef int uint32_t ;
struct string_list {int dummy; } ;
struct archive_extract_userdata {int list; } ;


 scalar_t__ RARCH_COMPRESSED_FILE_IN_ARCHIVE ;
 char* path_get_extension (char const*) ;
 int string_list_append (int ,char const*,union string_list_elem_attr) ;
 int string_list_find_elem_prefix (struct string_list*,char*,char const*) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_split (char const*,char*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int file_archive_get_file_list_cb(
      const char *path,
      const char *valid_exts,
      const uint8_t *cdata,
      unsigned cmode,
      uint32_t csize,
      uint32_t size,
      uint32_t checksum,
      struct archive_extract_userdata *userdata)
{
   union string_list_elem_attr attr;
   attr.i = 0;

   if (valid_exts)
   {
      size_t path_len = strlen(path);

      char last_char = path[path_len - 1];
      struct string_list *ext_list = ((void*)0);


      if (last_char == '/' || last_char == '\\' )
      {
         string_list_free(ext_list);
         return 0;
      }

      ext_list = string_split(valid_exts, "|");

      if (ext_list)
      {
         const char *file_ext = path_get_extension(path);

         if (!file_ext)
         {
            string_list_free(ext_list);
            return 0;
         }

         if (!string_list_find_elem_prefix(ext_list, ".", file_ext))
         {

            string_list_free(ext_list);
            return -1;
         }

         attr.i = RARCH_COMPRESSED_FILE_IN_ARCHIVE;
         string_list_free(ext_list);
      }
   }

   return string_list_append(userdata->list, path, attr);
}
