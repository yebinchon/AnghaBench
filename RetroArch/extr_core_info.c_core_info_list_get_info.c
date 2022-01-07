
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char const* path; } ;
typedef TYPE_1__ core_info_t ;
struct TYPE_7__ {size_t count; TYPE_1__* list; } ;
typedef TYPE_2__ core_info_list_t ;


 int memset (TYPE_1__*,int ,int) ;
 int path_basename (char const*) ;
 scalar_t__ string_is_equal (int ,int ) ;

bool core_info_list_get_info(core_info_list_t *core_info_list,
      core_info_t *out_info, const char *path)
{
   size_t i;
   if (!core_info_list || !out_info)
      return 0;

   memset(out_info, 0, sizeof(*out_info));

   for (i = 0; i < core_info_list->count; i++)
   {
      const core_info_t *info = &core_info_list->list[i];

      if (string_is_equal(path_basename(info->path),
               path_basename(path)))
      {
         *out_info = *info;
         return 1;
      }
   }

   return 0;
}
