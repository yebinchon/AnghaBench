
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* dir; char* path; size_t len; char* s; scalar_t__ data; } ;
typedef TYPE_1__ menu_content_ctx_defer_info_t ;
struct TYPE_7__ {int path; } ;
typedef TYPE_2__ core_info_t ;
typedef int core_info_list_t ;


 int RARCH_LOG (char*,int ) ;
 int core_info_get_current_core (TYPE_2__**) ;
 int core_info_list_get_supported_cores (int *,char*,TYPE_2__ const**,size_t*) ;
 int fill_pathname_join (char*,char const*,char const*,size_t) ;
 scalar_t__ path_is_compressed_file (char const*) ;
 int string_is_empty (char const*) ;
 int strlcpy (char*,int ,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static bool menu_content_find_first_core(menu_content_ctx_defer_info_t *def_info,
      bool load_content_with_current_core,
      char *new_core_path, size_t len)
{
   const core_info_t *info = ((void*)0);
   size_t supported = 0;
   core_info_list_t *core_info = (core_info_list_t*)def_info->data;
   const char *default_info_dir = def_info->dir;

   if (!string_is_empty(default_info_dir))
   {
      const char *default_info_path = def_info->path;
      size_t default_info_length = def_info->len;

      if (!string_is_empty(default_info_path))
         fill_pathname_join(def_info->s,
               default_info_dir, default_info_path,
               default_info_length);
   }

   if (core_info)
      core_info_list_get_supported_cores(core_info,
            def_info->s, &info,
            &supported);



   if (load_content_with_current_core)
   {
      core_info_get_current_core((core_info_t**)&info);
      if (info)
      {




         supported = 1;
      }
   }



   if (supported != 1)
      return 0;

    if (info)
      strlcpy(new_core_path, info->path, len);

   return 1;
}
