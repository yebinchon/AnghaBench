
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int path_key ;
typedef int opt_key ;
typedef int desc_key ;
struct TYPE_5__ {TYPE_3__* firmware; scalar_t__ config_data; } ;
typedef TYPE_1__ core_info_t ;
struct TYPE_6__ {size_t count; int * list; } ;
typedef TYPE_2__ core_info_list_t ;
struct TYPE_7__ {int optional; void* desc; void* path; } ;
typedef TYPE_3__ core_info_firmware_t ;
typedef int config_file_t ;


 scalar_t__ calloc (unsigned int,int) ;
 scalar_t__ config_get_bool (int *,char*,int*) ;
 scalar_t__ config_get_string (int *,char*,char**) ;
 int config_get_uint (int *,char*,unsigned int*) ;
 int free (char*) ;
 int snprintf (char*,int,char*,unsigned int) ;
 void* strdup (char*) ;
 int string_is_empty (char*) ;

__attribute__((used)) static void core_info_list_resolve_all_firmware(
      core_info_list_t *core_info_list)
{
   size_t i;
   unsigned c;

   for (i = 0; i < core_info_list->count; i++)
   {
      unsigned count = 0;
      core_info_firmware_t *firmware = ((void*)0);
      core_info_t *info = (core_info_t*)&core_info_list->list[i];
      config_file_t *config = (config_file_t*)info->config_data;

      if (!config || !config_get_uint(config, "firmware_count", &count))
         continue;

      firmware = (core_info_firmware_t*)calloc(count, sizeof(*firmware));

      if (!firmware)
         continue;

      info->firmware = firmware;

      for (c = 0; c < count; c++)
      {
         char path_key[64];
         char desc_key[64];
         char opt_key[64];
         bool tmp_bool = 0;
         char *tmp = ((void*)0);
         path_key[0] = desc_key[0] = opt_key[0] = '\0';

         snprintf(path_key, sizeof(path_key), "firmware%u_path", c);
         snprintf(desc_key, sizeof(desc_key), "firmware%u_desc", c);
         snprintf(opt_key, sizeof(opt_key), "firmware%u_opt", c);

         if (config_get_string(config, path_key, &tmp) && !string_is_empty(tmp))
         {
            info->firmware[c].path = strdup(tmp);
            free(tmp);
            tmp = ((void*)0);
         }
         if (config_get_string(config, desc_key, &tmp) && !string_is_empty(tmp))
         {
            info->firmware[c].desc = strdup(tmp);
            free(tmp);
            tmp = ((void*)0);
         }
         if (tmp)
            free(tmp);
         tmp = ((void*)0);
         if (config_get_bool(config, opt_key , &tmp_bool))
            info->firmware[c].optional = tmp_bool;
      }
   }
}
