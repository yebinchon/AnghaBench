
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 scalar_t__ _wrename (char*,char*) ;
 int free (char*) ;
 scalar_t__ rename (char const*,char const*) ;
 char* utf8_to_local_string_alloc (char const*) ;
 char* utf8_to_utf16_string_alloc (char const*) ;

int retro_vfs_file_rename_impl(const char *old_path, const char *new_path)
{
   if (!old_path || !*old_path || !new_path || !*new_path)
      return -1;
   return rename(old_path, new_path) == 0 ? 0 : -1;

}
