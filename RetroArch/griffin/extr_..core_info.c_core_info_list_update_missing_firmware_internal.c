
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t firmware_count; TYPE_1__* firmware; } ;
typedef TYPE_2__ core_info_t ;
typedef int core_info_list_t ;
struct TYPE_4__ {int missing; int path; int optional; } ;


 int PATH_MAX_LENGTH ;
 int RARCH_WARN (char*,int ) ;
 TYPE_2__* core_info_find_internal (int *,char const*) ;
 int fill_pathname_join (char*,char const*,int ,size_t) ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 int path_is_valid (char*) ;
 scalar_t__ string_is_empty (int ) ;

__attribute__((used)) static bool core_info_list_update_missing_firmware_internal(
      core_info_list_t *core_info_list,
      const char *core,
      const char *systemdir,
      bool *set_missing_bios)
{
   size_t i;
   core_info_t *info = ((void*)0);
   char *path = ((void*)0);
   size_t path_size = PATH_MAX_LENGTH * sizeof(char);

   if (!core_info_list || !core)
      return 0;

   info = core_info_find_internal(core_info_list, core);

   if (!info)
      return 0;

   path = (char*)malloc(path_size);

   if (!path)
      return 0;

   path[0] = '\0';

   for (i = 0; i < info->firmware_count; i++)
   {
      if (string_is_empty(info->firmware[i].path))
         continue;

      fill_pathname_join(path, systemdir,
            info->firmware[i].path, path_size);
      info->firmware[i].missing = !path_is_valid(path);
      if (info->firmware[i].missing && !info->firmware[i].optional)
      {
         *set_missing_bios = 1;
         RARCH_WARN("Firmware missing: %s\n", info->firmware[i].path);
      }
   }

   free(path);
   return 1;
}
