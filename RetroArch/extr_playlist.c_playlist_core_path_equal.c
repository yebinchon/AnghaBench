
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int entry_real_core_path ;


 int PATH_MAX_LENGTH ;
 int path_resolve_realpath (char*,int,int) ;
 scalar_t__ string_is_empty (char const*) ;
 scalar_t__ string_is_equal (char const*,char*) ;
 scalar_t__ string_is_equal_noncase (char const*,char*) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static bool playlist_core_path_equal(const char *real_core_path, const char *entry_core_path)
{
   char entry_real_core_path[PATH_MAX_LENGTH];

   entry_real_core_path[0] = '\0';


   if (string_is_empty(real_core_path) || string_is_empty(entry_core_path))
      return 0;


   strlcpy(entry_real_core_path, entry_core_path, sizeof(entry_real_core_path));
   if (!string_is_equal(entry_real_core_path, "DETECT"))
      path_resolve_realpath(entry_real_core_path, sizeof(entry_real_core_path), 1);

   if (string_is_empty(entry_real_core_path))
      return 0;






   if (string_is_equal(real_core_path, entry_real_core_path))
      return 1;


   return 0;
}
