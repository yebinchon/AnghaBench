
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 int _wremove (char*) ;
 int free (char*) ;
 scalar_t__ remove (char const*) ;
 char* utf8_to_local_string_alloc (char const*) ;
 char* utf8_to_utf16_string_alloc (char const*) ;

int retro_vfs_file_remove_impl(const char *path)
{
   if (remove(path) == 0)
      return 0;
   return -1;

}
