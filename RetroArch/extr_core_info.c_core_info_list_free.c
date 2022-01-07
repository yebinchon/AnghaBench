
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t firmware_count; TYPE_2__* firmware; scalar_t__ config_data; int required_hw_api_list; int databases_list; int categories_list; int licenses_list; int permissions_list; int note_list; int authors_list; int supported_extensions_list; TYPE_2__* required_hw_api; TYPE_2__* notes; TYPE_2__* databases; TYPE_2__* categories; TYPE_2__* licenses; TYPE_2__* permissions; TYPE_2__* authors; TYPE_2__* supported_extensions; TYPE_2__* display_version; TYPE_2__* display_name; TYPE_2__* system_manufacturer; TYPE_2__* system_id; TYPE_2__* systemname; TYPE_2__* core_name; TYPE_2__* path; } ;
typedef TYPE_1__ core_info_t ;
struct TYPE_6__ {size_t count; struct TYPE_6__* list; struct TYPE_6__* all_ext; struct TYPE_6__* desc; struct TYPE_6__* path; } ;
typedef TYPE_2__ core_info_list_t ;
typedef int config_file_t ;


 int config_file_free (int *) ;
 int free (TYPE_2__*) ;
 int string_list_free (int ) ;

__attribute__((used)) static void core_info_list_free(core_info_list_t *core_info_list)
{
   size_t i, j;

   if (!core_info_list)
      return;

   for (i = 0; i < core_info_list->count; i++)
   {
      core_info_t *info = (core_info_t*)&core_info_list->list[i];

      free(info->path);
      free(info->core_name);
      free(info->systemname);
      free(info->system_id);
      free(info->system_manufacturer);
      free(info->display_name);
      free(info->display_version);
      free(info->supported_extensions);
      free(info->authors);
      free(info->permissions);
      free(info->licenses);
      free(info->categories);
      free(info->databases);
      free(info->notes);
      free(info->required_hw_api);
      string_list_free(info->supported_extensions_list);
      string_list_free(info->authors_list);
      string_list_free(info->note_list);
      string_list_free(info->permissions_list);
      string_list_free(info->licenses_list);
      string_list_free(info->categories_list);
      string_list_free(info->databases_list);
      string_list_free(info->required_hw_api_list);
      config_file_free((config_file_t*)info->config_data);

      for (j = 0; j < info->firmware_count; j++)
      {
         free(info->firmware[j].path);
         free(info->firmware[j].desc);
      }
      free(info->firmware);
   }

   free(core_info_list->all_ext);
   free(core_info_list->list);
   free(core_info_list);
}
