#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rarch_setting_t ;
typedef  int /*<<< orphan*/  menu_path_new ;
struct TYPE_3__ {char* scratch2_buf; char const* scratch_buf; } ;
typedef  TYPE_1__ menu_handle_t ;
typedef  int /*<<< orphan*/  full_path_new ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  CORE_TYPE_PLAIN ; 
 scalar_t__ FILEBROWSER_SELECT_FILE_SUBSYSTEM ; 
#define  FILE_TYPE_IN_CARCHIVE 128 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_ARCHIVE_OPEN ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_ARCHIVE_OPEN_DETECT_CORE ; 
 int /*<<< orphan*/  MENU_SETTINGS ; 
 int PATH_MAX_LENGTH ; 
 scalar_t__ ST_PATH ; 
 int FUNC0 (char const*,char const*,unsigned int,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char const*,char,int) ; 
 int FUNC7 () ; 
 TYPE_1__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 
 scalar_t__ FUNC15 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC17(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   char menu_path_new[PATH_MAX_LENGTH];
   char full_path_new[PATH_MAX_LENGTH];
   const char *menu_label              = NULL;
   const char *menu_path               = NULL;
   rarch_setting_t *setting            = NULL;
   file_list_t  *menu_stack            = FUNC10(0);

   menu_path_new[0] = full_path_new[0] = '\0';

   if (FUNC4() == FILEBROWSER_SELECT_FILE_SUBSYSTEM)
   {
      /* TODO/FIXME - this path is triggered when we try to load a
       * file from an archive while inside the load subsystem
       * action */
      menu_handle_t *menu                 = FUNC8();
      if (!menu)
         return FUNC7();

      FUNC5(menu_path_new,
            menu->scratch2_buf, menu->scratch_buf,
            sizeof(menu_path_new));
      switch (type)
      {
         case FILE_TYPE_IN_CARCHIVE:
            FUNC6(full_path_new, menu_path_new, path,
                  '#',sizeof(full_path_new));
            break;
         default:
            FUNC5(full_path_new, menu_path_new, path,
                  sizeof(full_path_new));
            break;
      }

      FUNC1(full_path_new);
      FUNC9(NULL, MENU_SETTINGS);
      return 0;
   }

   FUNC3(menu_stack, &menu_path, &menu_label, NULL, NULL);

   if (!FUNC14(menu_label))
      setting = FUNC11(menu_label);

   if (FUNC13(setting) == ST_PATH)
      return FUNC0(path, label, type, idx, entry_idx);

   if (!FUNC14(menu_path))
      FUNC16(menu_path_new, menu_path, sizeof(menu_path_new));

   if (!FUNC14(menu_label))
   {
      if (
            FUNC15(menu_label,
               FUNC12(MENU_ENUM_LABEL_DEFERRED_ARCHIVE_OPEN_DETECT_CORE)) ||
            FUNC15(menu_label,
               FUNC12(MENU_ENUM_LABEL_DEFERRED_ARCHIVE_OPEN))
         )
      {
         menu_handle_t *menu                 = FUNC8();
         if (!menu)
            return FUNC7();

         FUNC5(menu_path_new,
               menu->scratch2_buf, menu->scratch_buf,
               sizeof(menu_path_new));
      }
   }

   switch (type)
   {
      case FILE_TYPE_IN_CARCHIVE:
         FUNC6(full_path_new, menu_path_new, path,
               '#',sizeof(full_path_new));
         break;
      default:
         FUNC5(full_path_new, menu_path_new, path,
               sizeof(full_path_new));
         break;
   }

   return FUNC2(full_path_new,
         CORE_TYPE_PLAIN);
}