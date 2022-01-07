
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct string_list {int dummy; } ;
typedef int core_info_t ;
struct TYPE_3__ {size_t count; int * list; } ;
typedef TYPE_1__ core_info_list_t ;


 scalar_t__ core_info_does_support_any_file (int const*,struct string_list*) ;
 scalar_t__ core_info_does_support_file (int const*,char const*) ;
 int core_info_qsort_cmp ;
 struct string_list* core_info_tmp_list ;
 char const* core_info_tmp_path ;
 struct string_list* file_archive_get_file_list (char const*,int *) ;
 scalar_t__ path_is_compressed_file (char const*) ;
 int qsort (int *,size_t,int,int ) ;
 int string_list_free (struct string_list*) ;

void core_info_list_get_supported_cores(core_info_list_t *core_info_list,
      const char *path, const core_info_t **infos, size_t *num_infos)
{
   size_t i;
   size_t supported = 0;




   if (!core_info_list)
      return;

   core_info_tmp_path = path;
   qsort(core_info_list->list, core_info_list->count,
         sizeof(core_info_t), core_info_qsort_cmp);

   for (i = 0; i < core_info_list->count; i++, supported++)
   {
      const core_info_t *core = &core_info_list->list[i];

      if (core_info_does_support_file(core, path))
         continue;






      break;
   }






   *infos = core_info_list->list;
   *num_infos = supported;
}
