
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union string_list_elem_attr {int i; } ;
struct string_list {int dummy; } ;
struct RDIR {int dummy; } ;
typedef int file_path ;


 int PATH_MAX_LENGTH ;
 int RARCH_COMPRESSED_ARCHIVE ;
 int RARCH_DIRECTORY ;
 int RARCH_FILETYPE_UNSET ;
 int RARCH_PLAIN_FILE ;
 int fill_pathname_join (char*,char const*,char const*,int) ;
 char* path_get_extension (char const*) ;
 int path_is_compressed_file (char*) ;
 int retro_closedir (struct RDIR*) ;
 scalar_t__ retro_dirent_error (struct RDIR*) ;
 char* retro_dirent_get_name (struct RDIR*) ;
 scalar_t__ retro_dirent_is_dir (struct RDIR*,int *) ;
 struct RDIR* retro_opendir_include_hidden (char const*,int) ;
 scalar_t__ retro_readdir (struct RDIR*) ;
 int strcmp (char const*,char*) ;
 int string_list_append (struct string_list*,char*,union string_list_elem_attr) ;
 scalar_t__ string_list_find_elem_prefix (struct string_list*,char*,char const*) ;

__attribute__((used)) static int dir_list_read(const char *dir,
      struct string_list *list, struct string_list *ext_list,
      bool include_dirs, bool include_hidden,
      bool include_compressed, bool recursive)
{
   struct RDIR *entry = retro_opendir_include_hidden(dir, include_hidden);

   if (!entry || retro_dirent_error(entry))
      goto error;

   while (retro_readdir(entry))
   {
      union string_list_elem_attr attr;
      char file_path[PATH_MAX_LENGTH];
      const char *name = retro_dirent_get_name(entry);

      if (!include_hidden && *name == '.')
         continue;
      if (!strcmp(name, ".") || !strcmp(name, ".."))
         continue;

      file_path[0] = '\0';
      fill_pathname_join(file_path, dir, name, sizeof(file_path));

      if (retro_dirent_is_dir(entry, ((void*)0)))
      {
         if (recursive)
            dir_list_read(file_path, list, ext_list, include_dirs,
                  include_hidden, include_compressed, recursive);

         if (!include_dirs)
            continue;
         attr.i = RARCH_DIRECTORY;
      }
      else
      {
         const char *file_ext = path_get_extension(name);

         attr.i = RARCH_FILETYPE_UNSET;
         if (string_list_find_elem_prefix(ext_list, ".", file_ext))
            attr.i = RARCH_PLAIN_FILE;
         else
         {
            bool is_compressed_file;
            if ((is_compressed_file = path_is_compressed_file(file_path)))
               attr.i = RARCH_COMPRESSED_ARCHIVE;

            if (ext_list &&
                  (!is_compressed_file || !include_compressed))
               continue;
         }
      }

      if (!string_list_append(list, file_path, attr))
         goto error;
   }

   retro_closedir(entry);

   return 0;

error:
   if (entry)
      retro_closedir(entry);
   return -1;
}
