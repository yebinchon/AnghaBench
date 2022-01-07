
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* path_get_extension (char const*) ;
 scalar_t__ strcasestr (char const*,char*) ;

bool path_is_compressed_file(const char* path)
{
   const char *ext = path_get_extension(path);

   if ( strcasestr(ext, "zip")
         || strcasestr(ext, "apk")
         || strcasestr(ext, "7z"))
      return 1;

   return 0;
}
