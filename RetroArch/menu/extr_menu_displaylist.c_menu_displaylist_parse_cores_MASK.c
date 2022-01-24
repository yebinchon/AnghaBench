#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct string_list {size_t size; TYPE_3__* elems; } ;
struct TYPE_8__ {int /*<<< orphan*/  show_hidden_files; } ;
struct TYPE_11__ {TYPE_1__ bools; } ;
typedef  TYPE_4__ settings_t ;
typedef  int /*<<< orphan*/  salamander_name ;
typedef  int /*<<< orphan*/  menu_handle_t ;
struct TYPE_12__ {char* path; int download_core; int need_sort; int /*<<< orphan*/  list; int /*<<< orphan*/  label; int /*<<< orphan*/  exts; } ;
typedef  TYPE_5__ menu_displaylist_info_t ;
typedef  enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
typedef  enum msg_file_type { ____Placeholder_msg_file_type } msg_file_type ;
typedef  int /*<<< orphan*/  core_info_list_t ;
struct TYPE_9__ {int i; } ;
struct TYPE_10__ {char const* data; TYPE_2__ attr; } ;

/* Variables and functions */
 unsigned int FILE_TYPE_CORE ; 
 int FILE_TYPE_DIRECTORY ; 
 int FILE_TYPE_NONE ; 
 int /*<<< orphan*/  FILE_TYPE_PARENT_DIRECTORY ; 
 int MENU_ENUM_LABEL_CORE_LIST ; 
 int MENU_ENUM_LABEL_FILE_BROWSER_CORE ; 
 int MENU_ENUM_LABEL_FILE_BROWSER_DIRECTORY ; 
 int MENU_ENUM_LABEL_FILE_BROWSER_SIDELOAD_CORE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_PARENT_DIRECTORY ; 
 int MENU_ENUM_LABEL_SIDELOAD_CORE_LIST ; 
 int MENU_ENUM_LABEL_VALUE_DIRECTORY_NOT_FOUND ; 
 int MENU_ENUM_LABEL_VALUE_PARENT_DIRECTORY ; 
 int MSG_UNKNOWN ; 
 int PATH_MAX_LENGTH ; 
#define  RARCH_COMPRESSED_ARCHIVE 131 
#define  RARCH_COMPRESSED_FILE_IN_ARCHIVE 130 
#define  RARCH_DIRECTORY 129 
#define  RARCH_PLAIN_FILE 128 
 TYPE_4__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,char*,size_t) ; 
 int FUNC3 (struct string_list*,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct string_list*,int) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,int) ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (size_t) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char const*,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,size_t,char const**,int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC18 (int) ; 
 char* FUNC19 (char const*) ; 
 scalar_t__ FUNC20 (char const*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC22 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC23 (struct string_list*) ; 
 struct string_list* FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (struct string_list*) ; 

__attribute__((used)) static unsigned FUNC26(
      menu_handle_t       *menu,
      menu_displaylist_info_t *info)
{
   size_t i, list_size;
   struct string_list *str_list = NULL;
   unsigned items_found         = 0;
   settings_t *settings         = FUNC0();
   const char *path             = info->path;
   bool ok;

   if (FUNC20(path))
   {
      if (FUNC12(info->list, true) != 0)
         FUNC14(info->list, "/", "",
               MSG_UNKNOWN, FILE_TYPE_DIRECTORY, 0, 0);
      items_found++;
      return items_found;
   }

   str_list = FUNC24();
   ok = FUNC3(str_list, path, info->exts,
         true, settings->bools.show_hidden_files, false, false);

#if defined(__WINRT__) || defined(WINAPI_FAMILY) && WINAPI_FAMILY == WINAPI_FAMILY_PHONE_APP
   /* UWP: browse the optional packages for additional cores */
   struct string_list *core_packages = string_list_new();
   uwp_fill_installed_core_packages(core_packages);
   for (i = 0; i < core_packages->size; i++)
      dir_list_append(str_list, core_packages->elems[i].data, info->exts,
            true, settings->bools.show_hidden_files, true, false);

   string_list_free(core_packages);
#else
   /* Keep the old 'directory not found' behavior */
   if (!ok)
   {
      FUNC23(str_list);
      str_list = NULL;
   }
#endif

   {
      char *out_dir = (char*)FUNC13(PATH_MAX_LENGTH * sizeof(char));

      out_dir[0] = '\0';

      FUNC8(out_dir, path,
            PATH_MAX_LENGTH * sizeof(char));

      if (FUNC20(out_dir))
      {
         FUNC17(info->list,
               FUNC18(MENU_ENUM_LABEL_VALUE_PARENT_DIRECTORY),
               path,
               MENU_ENUM_LABEL_PARENT_DIRECTORY,
               FILE_TYPE_PARENT_DIRECTORY, 0, 0);
      }

      FUNC9(out_dir);
   }

   if (!str_list)
   {
      const char *str = FUNC18(
            MENU_ENUM_LABEL_VALUE_DIRECTORY_NOT_FOUND);
      FUNC14(info->list, str, "",
            MENU_ENUM_LABEL_VALUE_DIRECTORY_NOT_FOUND, 0, 0, 0);
      items_found++;
      return items_found;
   }

   if (FUNC21(info->label, FUNC18(MENU_ENUM_LABEL_CORE_LIST)))
      info->download_core = true;

   FUNC4(str_list, true);

   list_size = str_list->size;

   if (list_size == 0)
   {
      FUNC23(str_list);
      return 0;
   }

   for (i = 0; i < list_size; i++)
   {
      bool is_dir;
      char label[64];
      const char *path              = NULL;
      enum msg_hash_enums enum_idx  = MSG_UNKNOWN;
      enum msg_file_type file_type  = FILE_TYPE_NONE;

      label[0] = '\0';

      switch (str_list->elems[i].attr.i)
      {
         case RARCH_DIRECTORY:
            file_type = FILE_TYPE_DIRECTORY;
            break;
         case RARCH_COMPRESSED_ARCHIVE:
         case RARCH_COMPRESSED_FILE_IN_ARCHIVE:
            /* Compressed cores are unsupported */
            continue;
         case RARCH_PLAIN_FILE:
         default:
            file_type = FILE_TYPE_CORE;
            break;
      }

      is_dir = (file_type == FILE_TYPE_DIRECTORY);

      /* Need to preserve slash first time. */
      path = str_list->elems[i].data;

      if (!FUNC20(path))
         path = FUNC19(path);

#ifndef HAVE_DYNAMIC
      if (FUNC11())
      {
         char salamander_name[PATH_MAX_LENGTH];

         salamander_name[0] = '\0';

         if (FUNC10(
                  salamander_name, sizeof(salamander_name)))
         {
            if (FUNC22(path, salamander_name))
               continue;
         }

         if (is_dir)
            continue;
      }
#endif

      if (is_dir)
      {
         file_type = FILE_TYPE_DIRECTORY;
         enum_idx  = MENU_ENUM_LABEL_FILE_BROWSER_DIRECTORY;
      }
      else
      {
         file_type = FILE_TYPE_CORE;
         if (FUNC21(info->label, FUNC18(MENU_ENUM_LABEL_SIDELOAD_CORE_LIST)))
            enum_idx  = MENU_ENUM_LABEL_FILE_BROWSER_SIDELOAD_CORE;
         else
            enum_idx  = MENU_ENUM_LABEL_FILE_BROWSER_CORE;
      }

      items_found++;

      FUNC14(info->list, path, label,
            enum_idx,
            file_type, 0, 0);
   }

   FUNC23(str_list);

   if (items_found == 0)
      return 0;

   {
      core_info_list_t *list         = NULL;
      const char *dir                = NULL;

      FUNC1(&list);

      FUNC16(&dir, NULL, NULL, NULL, NULL);

      list_size = FUNC5(info->list);

      for (i = 0; i < list_size; i++)
      {
         unsigned type                      = 0;
         const char *path                   = NULL;

         FUNC15(info->list,
               i, &path, NULL, &type, NULL,
               NULL);

         if (type == FILE_TYPE_CORE)
         {
            size_t path_size   = PATH_MAX_LENGTH * sizeof(char);
            char *core_path    = (char*)FUNC13(path_size);
            char *display_name = (char*)FUNC13(path_size);
            core_path[0]       =
            display_name[0]    = '\0';

            FUNC7(core_path, dir, path, path_size);

            if (FUNC2(list,
                     core_path, display_name, path_size))
               FUNC6(info->list, i, display_name);

            FUNC9(core_path);
            FUNC9(display_name);
         }
      }
      info->need_sort = true;
   }

   return items_found;
}