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
struct item_file {int /*<<< orphan*/  path; } ;
struct TYPE_8__ {int /*<<< orphan*/  directory_playlist; } ;
struct TYPE_9__ {TYPE_1__ paths; } ;
typedef  TYPE_2__ settings_t ;
typedef  int /*<<< orphan*/  playlist_t ;
typedef  int /*<<< orphan*/  path_playlist ;
typedef  int /*<<< orphan*/  menu_handle_t ;
typedef  int /*<<< orphan*/  menu_displaylist_info_t ;
struct TYPE_10__ {scalar_t__ entry; scalar_t__ size; scalar_t__ selection; scalar_t__ idx; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ menu_ctx_list_t ;
typedef  int /*<<< orphan*/  lpl_basename ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENUM_LABEL_COLLECTION ; 
 int /*<<< orphan*/  MENU_LIST_HORIZONTAL ; 
 int /*<<< orphan*/  MENU_LIST_TABS ; 
 int PATH_MAX_LENGTH ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(
      menu_handle_t *menu,
      menu_displaylist_info_t *info,
      bool sort)
{
   menu_ctx_list_t list_info;
   menu_ctx_list_t list_horiz_info;
   playlist_t *playlist                = NULL;
   struct item_file *item              = NULL;

   FUNC6(&list_info);

   list_info.type       = MENU_LIST_TABS;

   FUNC7(&list_info);

   list_horiz_info.type = MENU_LIST_HORIZONTAL;
   list_horiz_info.idx  = list_info.selection - (list_info.size +1);

   FUNC5(&list_horiz_info);

   item = (struct item_file*)list_horiz_info.entry;

   if (!item)
      return -1;

   if (!FUNC12(item->path))
   {
      char path_playlist[PATH_MAX_LENGTH];
      char lpl_basename[PATH_MAX_LENGTH];
      settings_t      *settings           = FUNC0();

      lpl_basename[0]   = '\0';
      path_playlist[0]  = '\0';

      FUNC2(
            path_playlist,
            settings->paths.directory_playlist,
            item->path,
            sizeof(path_playlist));
      FUNC4(menu, path_playlist);

      /* Thumbnail system must be set *after* playlist
       * is loaded/cached */
      FUNC1(lpl_basename, item->path, sizeof(lpl_basename));
      FUNC8(lpl_basename, sizeof(lpl_basename));
   }

   playlist = FUNC10();

   if (playlist)
   {
      if (sort)
         FUNC11(playlist);

      FUNC3(info,
            playlist,
            FUNC9(MENU_ENUM_LABEL_COLLECTION), true);
   }

   return 0;
}