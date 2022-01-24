#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct string_list {size_t size; TYPE_1__* elems; } ;
struct TYPE_9__ {unsigned int firmware_count; int supports_no_game; int database_match_archive_member; void* path; void* display_name; int /*<<< orphan*/ * config_data; void* required_hw_api; void* required_hw_api_list; void* notes; void* note_list; void* databases; void* databases_list; void* categories; void* categories_list; void* licenses; void* licenses_list; void* permissions; void* permissions_list; void* authors; void* authors_list; void* supported_extensions; void* supported_extensions_list; void* system_manufacturer; void* system_id; void* systemname; void* core_name; void* display_version; } ;
typedef  TYPE_2__ core_info_t ;
struct TYPE_10__ {int count; TYPE_2__* list; } ;
typedef  TYPE_3__ core_info_list_t ;
typedef  int /*<<< orphan*/  config_file_t ;
struct TYPE_8__ {char const* data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int FUNC8 (struct string_list*,char const*,char const*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char const* FUNC10 (void*) ; 
 void* FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (struct string_list*) ; 
 struct string_list* FUNC14 () ; 
 void* FUNC15 (void*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct string_list*) ; 

__attribute__((used)) static core_info_list_t *FUNC17(const char *path,
      const char *libretro_info_dir,
      const char *exts,
      bool dir_show_hidden_files)
{
   size_t i;
   core_info_t *core_info           = NULL;
   core_info_list_t *core_info_list = NULL;
   const char       *path_basedir   = libretro_info_dir;
   struct string_list *contents     = FUNC14();
   bool                          ok = FUNC8(contents, path, exts,
         false, dir_show_hidden_files, false, false);

#if defined(__WINRT__) || defined(WINAPI_FAMILY) && WINAPI_FAMILY == WINAPI_FAMILY_PHONE_APP
   /* UWP: browse the optional packages for additional cores */
   struct string_list *core_packages = string_list_new();
   uwp_fill_installed_core_packages(core_packages);
   for (i = 0; i < core_packages->size; i++)
      dir_list_append(contents, core_packages->elems[i].data, exts,
            false, dir_show_hidden_files, false, false);
   string_list_free(core_packages);
#else
   /* Keep the old 'directory not found' behavior */
   if (!ok)
   {
      FUNC13(contents);
      return NULL;
   }
#endif

   if (!contents)
      return NULL;

   core_info_list = (core_info_list_t*)FUNC0(1, sizeof(*core_info_list));
   if (!core_info_list)
   {
      FUNC13(contents);
      return NULL;
   }

   core_info = (core_info_t*)FUNC0(contents->size, sizeof(*core_info));
   if (!core_info)
   {
      FUNC4(core_info_list);
      FUNC13(contents);
      return NULL;
   }

   core_info_list->list  = core_info;
   core_info_list->count = contents->size;

   for (i = 0; i < contents->size; i++)
   {
      const char *base_path = contents->elems[i].data;
      config_file_t *conf   = FUNC5(base_path,
            path_basedir);

      if (conf)
      {
         char *tmp           = NULL;

         if (FUNC2(conf, "display_name", &tmp)
               && !FUNC12(tmp))
         {
            core_info[i].display_name = FUNC11(tmp);
            FUNC9(tmp);
            tmp = NULL;
         }
         if (FUNC2(conf, "display_version", &tmp)
               && !FUNC12(tmp))
         {
            core_info[i].display_version = FUNC11(tmp);
            FUNC9(tmp);
            tmp = NULL;
         }
         if (FUNC2(conf, "corename", &tmp)
               && !FUNC12(tmp))
         {
            core_info[i].core_name = FUNC11(tmp);
            FUNC9(tmp);
            tmp = NULL;
         }

         if (FUNC2(conf, "systemname", &tmp)
               && !FUNC12(tmp))
         {
            core_info[i].systemname = FUNC11(tmp);
            FUNC9(tmp);
            tmp = NULL;
         }

         if (FUNC2(conf, "systemid", &tmp)
               && !FUNC12(tmp))
         {
            core_info[i].system_id = FUNC11(tmp);
            FUNC9(tmp);
            tmp = NULL;
         }

         if (FUNC2(conf, "manufacturer", &tmp)
               && !FUNC12(tmp))
         {
            core_info[i].system_manufacturer = FUNC11(tmp);
            FUNC9(tmp);
            tmp = NULL;
         }

         {
            unsigned count      = 0;
            FUNC3(conf, "firmware_count", &count);
            core_info[i].firmware_count = count;
         }

         if (FUNC2(conf, "supported_extensions", &tmp)
               && !FUNC12(tmp))
         {
            core_info[i].supported_extensions      = FUNC11(tmp);
            core_info[i].supported_extensions_list =
               FUNC15(core_info[i].supported_extensions, "|");

            FUNC9(tmp);
            tmp = NULL;
         }

         if (FUNC2(conf, "authors", &tmp)
               && !FUNC12(tmp))
         {
            core_info[i].authors      = FUNC11(tmp);
            core_info[i].authors_list =
               FUNC15(core_info[i].authors, "|");

            FUNC9(tmp);
            tmp = NULL;
         }

         if (FUNC2(conf, "permissions", &tmp)
               && !FUNC12(tmp))
         {
            core_info[i].permissions      = FUNC11(tmp);
            core_info[i].permissions_list =
               FUNC15(core_info[i].permissions, "|");

            FUNC9(tmp);
            tmp = NULL;
         }

         if (FUNC2(conf, "license", &tmp)
               && !FUNC12(tmp))
         {
            core_info[i].licenses      = FUNC11(tmp);
            core_info[i].licenses_list =
               FUNC15(core_info[i].licenses, "|");

            FUNC9(tmp);
            tmp = NULL;
         }

         if (FUNC2(conf, "categories", &tmp)
               && !FUNC12(tmp))
         {
            core_info[i].categories      = FUNC11(tmp);
            core_info[i].categories_list =
               FUNC15(core_info[i].categories, "|");

            FUNC9(tmp);
            tmp = NULL;
         }

         if (FUNC2(conf, "database", &tmp)
               && !FUNC12(tmp))
         {
            core_info[i].databases      = FUNC11(tmp);
            core_info[i].databases_list =
               FUNC15(core_info[i].databases, "|");

            FUNC9(tmp);
            tmp = NULL;
         }

         if (FUNC2(conf, "notes", &tmp)
               && !FUNC12(tmp))
         {
            core_info[i].notes     = FUNC11(tmp);
            core_info[i].note_list = FUNC15(core_info[i].notes, "|");

            FUNC9(tmp);
            tmp = NULL;
         }

         if (FUNC2(conf, "required_hw_api", &tmp)
               && !FUNC12(tmp))
         {
            core_info[i].required_hw_api = FUNC11(tmp);
            core_info[i].required_hw_api_list = FUNC15(core_info[i].required_hw_api, "|");

            FUNC9(tmp);
            tmp = NULL;
         }

         if (tmp)
            FUNC9(tmp);
         tmp    = NULL;

         {
            bool tmp_bool       = false;
            if (FUNC1(conf, "supports_no_game",
                     &tmp_bool))
               core_info[i].supports_no_game = tmp_bool;

            if (FUNC1(conf, "database_match_archive_member",
                     &tmp_bool))
               core_info[i].database_match_archive_member = tmp_bool;
         }

         core_info[i].config_data = conf;
      }

      if (!FUNC12(base_path))
         core_info[i].path = FUNC11(base_path);

      if (!core_info[i].display_name)
         core_info[i].display_name =
            FUNC11(FUNC10(core_info[i].path));
   }

   if (core_info_list)
   {
      FUNC6(core_info_list);
      FUNC7(core_info_list);
   }

   FUNC13(contents);
   return core_info_list;
}