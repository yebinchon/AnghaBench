
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* path; int display_name; } ;
typedef TYPE_1__ core_info_t ;
struct TYPE_5__ {size_t count; TYPE_1__* list; } ;
typedef TYPE_2__ core_info_list_t ;


 int path_basename (char const*) ;
 int string_is_equal (int ,int ) ;
 int strlcpy (char*,int ,size_t) ;

bool core_info_list_get_display_name(core_info_list_t *core_info_list,
      const char *path, char *s, size_t len)
{
   size_t i;

   if (!core_info_list)
      return 0;

   for (i = 0; i < core_info_list->count; i++)
   {
      const core_info_t *info = &core_info_list->list[i];

      if (!string_is_equal(path_basename(info->path), path_basename(path)))
         continue;

      if (!info->display_name)
         continue;

      strlcpy(s, info->display_name, len);
      return 1;
   }

   return 0;
}
