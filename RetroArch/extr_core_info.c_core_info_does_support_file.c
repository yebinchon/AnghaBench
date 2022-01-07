
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int supported_extensions_list; } ;
typedef TYPE_1__ core_info_t ;


 int path_get_extension (char const*) ;
 scalar_t__ string_is_empty (char const*) ;
 int string_list_find_elem_prefix (int ,char*,int ) ;

__attribute__((used)) static bool core_info_does_support_file(
      const core_info_t *core, const char *path)
{
   if (!core || !core->supported_extensions_list)
      return 0;
   if (string_is_empty(path))
      return 0;

   return string_list_find_elem_prefix(
         core->supported_extensions_list, ".", path_get_extension(path));
}
