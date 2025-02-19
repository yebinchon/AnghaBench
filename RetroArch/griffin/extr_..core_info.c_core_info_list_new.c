
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct string_list {size_t size; TYPE_1__* elems; } ;
struct TYPE_9__ {unsigned int firmware_count; int supports_no_game; int database_match_archive_member; void* path; void* display_name; int * config_data; void* required_hw_api; void* required_hw_api_list; void* notes; void* note_list; void* databases; void* databases_list; void* categories; void* categories_list; void* licenses; void* licenses_list; void* permissions; void* permissions_list; void* authors; void* authors_list; void* supported_extensions; void* supported_extensions_list; void* system_manufacturer; void* system_id; void* systemname; void* core_name; void* display_version; } ;
typedef TYPE_2__ core_info_t ;
struct TYPE_10__ {int count; TYPE_2__* list; } ;
typedef TYPE_3__ core_info_list_t ;
typedef int config_file_t ;
struct TYPE_8__ {char const* data; } ;


 scalar_t__ calloc (int,int) ;
 scalar_t__ config_get_bool (int *,char*,int*) ;
 scalar_t__ config_get_string (int *,char*,char**) ;
 int config_get_uint (int *,char*,unsigned int*) ;
 int core_info_list_free (TYPE_3__*) ;
 int * core_info_list_iterate (char const*,char const*) ;
 int core_info_list_resolve_all_extensions (TYPE_3__*) ;
 int core_info_list_resolve_all_firmware (TYPE_3__*) ;
 int dir_list_append (struct string_list*,char const*,char const*,int,int,int,int) ;
 int free (char*) ;
 char const* path_basename (void*) ;
 void* strdup (char const*) ;
 int string_is_empty (char const*) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_list_new () ;
 void* string_split (void*,char*) ;
 int uwp_fill_installed_core_packages (struct string_list*) ;

__attribute__((used)) static core_info_list_t *core_info_list_new(const char *path,
      const char *libretro_info_dir,
      const char *exts,
      bool dir_show_hidden_files)
{
   size_t i;
   core_info_t *core_info = ((void*)0);
   core_info_list_t *core_info_list = ((void*)0);
   const char *path_basedir = libretro_info_dir;
   struct string_list *contents = string_list_new();
   bool ok = dir_list_append(contents, path, exts,
         0, dir_show_hidden_files, 0, 0);
   if (!ok)
   {
      string_list_free(contents);
      return ((void*)0);
   }


   if (!contents)
      return ((void*)0);

   core_info_list = (core_info_list_t*)calloc(1, sizeof(*core_info_list));
   if (!core_info_list)
   {
      string_list_free(contents);
      return ((void*)0);
   }

   core_info = (core_info_t*)calloc(contents->size, sizeof(*core_info));
   if (!core_info)
   {
      core_info_list_free(core_info_list);
      string_list_free(contents);
      return ((void*)0);
   }

   core_info_list->list = core_info;
   core_info_list->count = contents->size;

   for (i = 0; i < contents->size; i++)
   {
      const char *base_path = contents->elems[i].data;
      config_file_t *conf = core_info_list_iterate(base_path,
            path_basedir);

      if (conf)
      {
         char *tmp = ((void*)0);

         if (config_get_string(conf, "display_name", &tmp)
               && !string_is_empty(tmp))
         {
            core_info[i].display_name = strdup(tmp);
            free(tmp);
            tmp = ((void*)0);
         }
         if (config_get_string(conf, "display_version", &tmp)
               && !string_is_empty(tmp))
         {
            core_info[i].display_version = strdup(tmp);
            free(tmp);
            tmp = ((void*)0);
         }
         if (config_get_string(conf, "corename", &tmp)
               && !string_is_empty(tmp))
         {
            core_info[i].core_name = strdup(tmp);
            free(tmp);
            tmp = ((void*)0);
         }

         if (config_get_string(conf, "systemname", &tmp)
               && !string_is_empty(tmp))
         {
            core_info[i].systemname = strdup(tmp);
            free(tmp);
            tmp = ((void*)0);
         }

         if (config_get_string(conf, "systemid", &tmp)
               && !string_is_empty(tmp))
         {
            core_info[i].system_id = strdup(tmp);
            free(tmp);
            tmp = ((void*)0);
         }

         if (config_get_string(conf, "manufacturer", &tmp)
               && !string_is_empty(tmp))
         {
            core_info[i].system_manufacturer = strdup(tmp);
            free(tmp);
            tmp = ((void*)0);
         }

         {
            unsigned count = 0;
            config_get_uint(conf, "firmware_count", &count);
            core_info[i].firmware_count = count;
         }

         if (config_get_string(conf, "supported_extensions", &tmp)
               && !string_is_empty(tmp))
         {
            core_info[i].supported_extensions = strdup(tmp);
            core_info[i].supported_extensions_list =
               string_split(core_info[i].supported_extensions, "|");

            free(tmp);
            tmp = ((void*)0);
         }

         if (config_get_string(conf, "authors", &tmp)
               && !string_is_empty(tmp))
         {
            core_info[i].authors = strdup(tmp);
            core_info[i].authors_list =
               string_split(core_info[i].authors, "|");

            free(tmp);
            tmp = ((void*)0);
         }

         if (config_get_string(conf, "permissions", &tmp)
               && !string_is_empty(tmp))
         {
            core_info[i].permissions = strdup(tmp);
            core_info[i].permissions_list =
               string_split(core_info[i].permissions, "|");

            free(tmp);
            tmp = ((void*)0);
         }

         if (config_get_string(conf, "license", &tmp)
               && !string_is_empty(tmp))
         {
            core_info[i].licenses = strdup(tmp);
            core_info[i].licenses_list =
               string_split(core_info[i].licenses, "|");

            free(tmp);
            tmp = ((void*)0);
         }

         if (config_get_string(conf, "categories", &tmp)
               && !string_is_empty(tmp))
         {
            core_info[i].categories = strdup(tmp);
            core_info[i].categories_list =
               string_split(core_info[i].categories, "|");

            free(tmp);
            tmp = ((void*)0);
         }

         if (config_get_string(conf, "database", &tmp)
               && !string_is_empty(tmp))
         {
            core_info[i].databases = strdup(tmp);
            core_info[i].databases_list =
               string_split(core_info[i].databases, "|");

            free(tmp);
            tmp = ((void*)0);
         }

         if (config_get_string(conf, "notes", &tmp)
               && !string_is_empty(tmp))
         {
            core_info[i].notes = strdup(tmp);
            core_info[i].note_list = string_split(core_info[i].notes, "|");

            free(tmp);
            tmp = ((void*)0);
         }

         if (config_get_string(conf, "required_hw_api", &tmp)
               && !string_is_empty(tmp))
         {
            core_info[i].required_hw_api = strdup(tmp);
            core_info[i].required_hw_api_list = string_split(core_info[i].required_hw_api, "|");

            free(tmp);
            tmp = ((void*)0);
         }

         if (tmp)
            free(tmp);
         tmp = ((void*)0);

         {
            bool tmp_bool = 0;
            if (config_get_bool(conf, "supports_no_game",
                     &tmp_bool))
               core_info[i].supports_no_game = tmp_bool;

            if (config_get_bool(conf, "database_match_archive_member",
                     &tmp_bool))
               core_info[i].database_match_archive_member = tmp_bool;
         }

         core_info[i].config_data = conf;
      }

      if (!string_is_empty(base_path))
         core_info[i].path = strdup(base_path);

      if (!core_info[i].display_name)
         core_info[i].display_name =
            strdup(path_basename(core_info[i].path));
   }

   if (core_info_list)
   {
      core_info_list_resolve_all_extensions(core_info_list);
      core_info_list_resolve_all_firmware(core_info_list);
   }

   string_list_free(contents);
   return core_info_list;
}
