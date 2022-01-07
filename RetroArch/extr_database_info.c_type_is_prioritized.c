
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* path_get_extension (char const*) ;
 scalar_t__ string_is_equal_noncase (char const*,char*) ;

__attribute__((used)) static bool type_is_prioritized(const char *path)
{
   const char *ext = path_get_extension(path);
   if (string_is_equal_noncase(ext, "cue"))
      return 1;
   if (string_is_equal_noncase(ext, "gdi"))
      return 1;
   return 0;
}
