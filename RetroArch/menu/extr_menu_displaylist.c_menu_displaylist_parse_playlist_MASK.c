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
typedef  int /*<<< orphan*/  system_name ;
struct playlist_entry {char const* path; char const* label; char const* core_name; } ;
struct TYPE_10__ {char const* menu_driver; } ;
struct TYPE_9__ {scalar_t__ playlist_show_inline_core_name; } ;
struct TYPE_8__ {int /*<<< orphan*/  playlist_show_sublabels; } ;
struct TYPE_11__ {TYPE_3__ arrays; TYPE_2__ uints; TYPE_1__ bools; } ;
typedef  TYPE_4__ settings_t ;
typedef  int /*<<< orphan*/  playlist_t ;
typedef  int /*<<< orphan*/  menu_entry_label ;
struct TYPE_12__ {char const* path; int need_push_no_playlist_entries; int /*<<< orphan*/  count; int /*<<< orphan*/  list; } ;
typedef  TYPE_5__ menu_displaylist_info_t ;
typedef  int /*<<< orphan*/  lpl_basename ;
typedef  int /*<<< orphan*/  label_spacer ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_TYPE_PLAYLIST_ENTRY ; 
 int /*<<< orphan*/  FILE_TYPE_RPL_ENTRY ; 
#define  LABEL_DISPLAY_MODE_KEEP_DISC_INDEX 133 
#define  LABEL_DISPLAY_MODE_KEEP_REGION 132 
#define  LABEL_DISPLAY_MODE_KEEP_REGION_AND_DISC_INDEX 131 
#define  LABEL_DISPLAY_MODE_REMOVE_BRACKETS 130 
#define  LABEL_DISPLAY_MODE_REMOVE_PARENTHESES 129 
#define  LABEL_DISPLAY_MODE_REMOVE_PARENTHESES_AND_BRACKETS 128 
 int /*<<< orphan*/  MENU_ENUM_LABEL_PLAYLIST_ENTRY ; 
 int PATH_MAX_LENGTH ; 
 scalar_t__ PLAYLIST_INLINE_CORE_DISPLAY_ALWAYS ; 
 scalar_t__ PLAYLIST_INLINE_CORE_DISPLAY_NEVER ; 
 char const* PL_LABEL_SPACER_DEFAULT ; 
 int PL_LABEL_SPACER_MAXLEN ; 
 char const* PL_LABEL_SPACER_RGUI ; 
 TYPE_4__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 void FUNC4 (char*) ; 
 void FUNC5 (char*) ; 
 void FUNC6 (char*) ; 
 void FUNC7 (char*) ; 
 void FUNC8 (char*) ; 
 void FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned int,struct playlist_entry const**) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 size_t FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (char const*) ; 
 scalar_t__ FUNC16 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,char const*,int) ; 
 void FUNC19 (char*) ; 

__attribute__((used)) static int FUNC20(menu_displaylist_info_t *info,
      playlist_t *playlist, const char *path_playlist, bool is_collection)
{
   unsigned i;
   char label_spacer[PL_LABEL_SPACER_MAXLEN];
   size_t           list_size        = FUNC14(playlist);
   settings_t       *settings        = FUNC0();
   bool show_inline_core_name        = false;
   void (*sanitization)(char*);

   label_spacer[0] = '\0';

   if (list_size == 0)
      goto error;

   /* Check whether core name should be added to playlist entries */
   if (!FUNC16(settings->arrays.menu_driver, "ozone") &&
       !settings->bools.playlist_show_sublabels &&
       ((settings->uints.playlist_show_inline_core_name == PLAYLIST_INLINE_CORE_DISPLAY_ALWAYS) ||
        (!is_collection && !(settings->uints.playlist_show_inline_core_name == PLAYLIST_INLINE_CORE_DISPLAY_NEVER))))
   {
      show_inline_core_name = true;

      /* Get spacer for menu entry labels (<content><spacer><core>)
       * > Note: Only required when showing inline core names */
      if (FUNC16(settings->arrays.menu_driver, "rgui"))
         FUNC18(label_spacer, PL_LABEL_SPACER_RGUI, sizeof(label_spacer));
      else
         FUNC18(label_spacer, PL_LABEL_SPACER_DEFAULT, sizeof(label_spacer));
   }

   /* Inform menu driver of current system name
    * > Note: history, favorites and images_history
    *   require special treatment here, since info->path
    *   is nonsensical in these cases (and we *do* need
    *   to call set_thumbnail_system() in these cases,
    *   since all three playlist types have thumbnail
    *   support)
    * EDIT: For correct operation of the quick menu
    * 'download thumbnails' option, we must also extend
    * this to music_history and video_history */
   if (FUNC16(path_playlist, "history") ||
       FUNC16(path_playlist, "favorites") ||
       FUNC16(path_playlist, "images_history") ||
       FUNC16(path_playlist, "music_history") ||
       FUNC16(path_playlist, "video_history"))
   {
      char system_name[15];
      system_name[0] = '\0';

      FUNC18(system_name, path_playlist, sizeof(system_name));
      FUNC10(system_name, sizeof(system_name));
   }
   else if (!FUNC15(info->path))
   {
      char lpl_basename[PATH_MAX_LENGTH];
      lpl_basename[0] = '\0';

      FUNC2(lpl_basename, info->path, sizeof(lpl_basename));
      FUNC10(lpl_basename, sizeof(lpl_basename));
   }

   /* Preallocate the file list */
   FUNC1(info->list, list_size);

   switch (FUNC13(playlist))
   {
      case LABEL_DISPLAY_MODE_REMOVE_PARENTHESES :
         sanitization = &label_remove_parens;
         break;
      case LABEL_DISPLAY_MODE_REMOVE_BRACKETS :
         sanitization = &label_remove_brackets;
         break;
      case LABEL_DISPLAY_MODE_REMOVE_PARENTHESES_AND_BRACKETS :
         sanitization = &label_remove_parens_and_brackets;
         break;
      case LABEL_DISPLAY_MODE_KEEP_DISC_INDEX :
         sanitization = &label_keep_disc;
         break;
      case LABEL_DISPLAY_MODE_KEEP_REGION :
         sanitization = &label_keep_region;
         break;
      case LABEL_DISPLAY_MODE_KEEP_REGION_AND_DISC_INDEX :
         sanitization = &label_keep_region_and_disc;
         break;
      default :
         sanitization = NULL;
   }

   for (i = 0; i < list_size; i++)
   {
      char menu_entry_label[PATH_MAX_LENGTH];
      const struct playlist_entry *entry  = NULL;

      menu_entry_label[0] = '\0';

      /* Read playlist entry */
      FUNC12(playlist, i, &entry);

      if (!FUNC15(entry->path))
      {
         /* Standard playlist entry
          * > Base menu entry label is always playlist label
          *   > If playlist label is NULL, fallback to playlist entry file name
          * > If required, add currently associated core (if any), otherwise
          *   no further action is necessary */

         if (FUNC15(entry->label))
            FUNC3(menu_entry_label, entry->path, sizeof(menu_entry_label));
         else
            FUNC18(menu_entry_label, entry->label, sizeof(menu_entry_label));

         if (sanitization)
            (*sanitization)(menu_entry_label);

         if (show_inline_core_name)
         {
            if (!FUNC15(entry->core_name) && !FUNC16(entry->core_name, "DETECT"))
            {
               FUNC17(menu_entry_label, label_spacer, sizeof(menu_entry_label));
               FUNC17(menu_entry_label, entry->core_name, sizeof(menu_entry_label));
            }
         }

         FUNC11(info->list, menu_entry_label, entry->path,
               MENU_ENUM_LABEL_PLAYLIST_ENTRY, FILE_TYPE_RPL_ENTRY, 0, i);
      }
      else
      {
         if (entry->core_name)
            FUNC18(menu_entry_label, entry->core_name, sizeof(menu_entry_label));

         FUNC11(info->list, menu_entry_label, path_playlist,
               MENU_ENUM_LABEL_PLAYLIST_ENTRY, FILE_TYPE_PLAYLIST_ENTRY, 0, i);
      }

      info->count++;
   }

   return 0;

error:
   info->need_push_no_playlist_entries = true;
   return 0;
}