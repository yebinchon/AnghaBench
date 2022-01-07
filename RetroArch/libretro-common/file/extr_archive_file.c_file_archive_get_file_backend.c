
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_archive_file_backend {int dummy; } ;
typedef int newpath ;


 int PATH_MAX_LENGTH ;
 scalar_t__ path_get_archive_delim (char*) ;
 char* path_get_extension (char*) ;
 struct file_archive_file_backend const sevenzip_backend ;
 scalar_t__ string_is_equal_noncase (char const*,char*) ;
 int strlcpy (char*,char const*,int) ;
 struct file_archive_file_backend const zlib_backend ;

const struct file_archive_file_backend* file_archive_get_file_backend(const char *path)
{
   return ((void*)0);
}
