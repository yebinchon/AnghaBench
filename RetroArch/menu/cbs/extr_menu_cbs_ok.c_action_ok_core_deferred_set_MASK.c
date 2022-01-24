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
struct playlist_entry {char* core_path; char* core_name; int /*<<< orphan*/  member_0; } ;
struct TYPE_9__ {int /*<<< orphan*/  show_hidden_files; } ;
struct TYPE_8__ {int /*<<< orphan*/  directory_libretro; int /*<<< orphan*/  path_libretro_info; } ;
struct TYPE_11__ {TYPE_2__ bools; TYPE_1__ paths; } ;
typedef  TYPE_4__ settings_t ;
typedef  int /*<<< orphan*/  resolved_core_path ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_10__ {int /*<<< orphan*/  unsigned_var; } ;
struct TYPE_12__ {TYPE_3__ scratchpad; } ;
typedef  TYPE_5__ menu_handle_t ;
typedef  int /*<<< orphan*/  ext_name ;
typedef  int /*<<< orphan*/  core_display_name ;

/* Variables and functions */
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_SET_CORE_ASSOCIATION ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  PLAYLIST_SAVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct playlist_entry*) ; 
 TYPE_4__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 () ; 
 TYPE_5__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (size_t*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (size_t) ; 
 char const* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC14(const char *new_core_path,
      const char *content_label, unsigned type, size_t idx, size_t entry_idx)
{
   char ext_name[255];
   char core_display_name[PATH_MAX_LENGTH];
   char resolved_core_path[PATH_MAX_LENGTH];
   char msg[PATH_MAX_LENGTH];
   settings_t *settings                    = FUNC1();
   size_t selection                        = FUNC7();
   struct playlist_entry entry             = {0};
   menu_handle_t            *menu          = FUNC5();

   ext_name[0]                             = '\0';
   core_display_name[0]                    = '\0';
   resolved_core_path[0]                   = '\0';
   msg[0]                                  = '\0';

   if (!menu)
      return FUNC4();

   if (!FUNC3(ext_name, sizeof(ext_name)))
      return FUNC4();

   FUNC2(new_core_path,
         core_display_name, sizeof(core_display_name),
         settings->paths.path_libretro_info,
         settings->paths.directory_libretro,
         ext_name,
         settings->bools.show_hidden_files,
         true);

    FUNC13(resolved_core_path, new_core_path, sizeof(resolved_core_path));
    FUNC10(PLAYLIST_SAVE, resolved_core_path, sizeof(resolved_core_path));

   /* the update function reads our entry
    * as const, so these casts are safe */
   entry.core_path = (char*)resolved_core_path;
   entry.core_name = core_display_name;

   FUNC0(
         NULL,
         menu->scratchpad.unsigned_var,
         &entry);

   /* Provide visual feedback */
   FUNC13(msg, FUNC9(MSG_SET_CORE_ASSOCIATION), sizeof(msg));
   FUNC12(msg, core_display_name, sizeof(msg));
   FUNC11(msg, 1, 100, true, NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);

   FUNC6(&selection, 0, 1);
   FUNC8(selection);

   return FUNC4();
}