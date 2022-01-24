#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct playlist_entry {char const* subsystem_ident; char* core_path; char* core_name; char const* path; int /*<<< orphan*/  label; int /*<<< orphan*/  member_0; TYPE_2__* subsystem_roms; } ;
typedef  int /*<<< orphan*/  playlist_t ;
typedef  int /*<<< orphan*/  new_path ;
typedef  int /*<<< orphan*/  new_core_path ;
struct TYPE_14__ {int /*<<< orphan*/  db_playlist_file; } ;
typedef  TYPE_4__ menu_handle_t ;
struct TYPE_15__ {char* path; TYPE_3__* inf; } ;
typedef  TYPE_5__ core_info_ctx_find_t ;
struct TYPE_16__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_6__ content_ctx_info_t ;
struct TYPE_13__ {char* display_name; } ;
struct TYPE_12__ {unsigned int size; TYPE_1__* elems; } ;
struct TYPE_11__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLLECTION_SIZE ; 
 int /*<<< orphan*/  CORE_TYPE_PLAIN ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  PLAYLIST_LOAD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*,char const*,unsigned int,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,struct playlist_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,char*) ; 
 int FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 TYPE_4__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 char* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,size_t,struct playlist_entry const**) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char const*) ; 
 scalar_t__ FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   char new_path[PATH_MAX_LENGTH];
   char new_core_path[PATH_MAX_LENGTH];
   size_t selection_ptr                = 0;
   bool playlist_initialized           = false;
   playlist_t *playlist                = NULL;
   playlist_t *tmp_playlist            = NULL;
   const struct playlist_entry *entry  = NULL;
   unsigned i                          = 0;
   menu_handle_t *menu                 = FUNC10();

   if (!menu)
      return FUNC8();

   new_path[0]                         = '\0';
   new_core_path[0]                    = '\0';
   tmp_playlist                        = FUNC12();

   if (!tmp_playlist)
   {
      tmp_playlist = FUNC15(
            menu->db_playlist_file, COLLECTION_SIZE);

      if (!tmp_playlist)
         return FUNC8();

      playlist_initialized = true;
   }

   playlist      = tmp_playlist;
   selection_ptr = entry_idx;

   FUNC14(playlist, selection_ptr, &entry);

   /* Subsystem codepath */
   if (!FUNC18(entry->subsystem_ident))
   {
      content_ctx_info_t content_info = {0};

      FUNC21(entry->core_path, NULL,
            &content_info, CORE_TYPE_PLAIN, NULL, NULL);

      FUNC4();

      if (!FUNC5(entry->subsystem_ident))
      {
         FUNC0("[playlist] subsystem not found in implementation\n");
         /* TODO: Add OSD message telling users that content can't be loaded */
         return 0;
      }

      for (i = 0; i < entry->subsystem_roms->size; i++)
         FUNC3(entry->subsystem_roms->elems[i].data);

      FUNC22(
         NULL, &content_info,
         CORE_TYPE_PLAIN, NULL, NULL);
      /* TODO: update playlist entry? move to first position I guess? */
      return 1;
   }

   /* Is the core path / name of the playlist entry not yet filled in? */
   if (     FUNC19(entry->core_path, "DETECT")
         && FUNC19(entry->core_name, "DETECT"))
   {
      core_info_ctx_find_t core_info;
      const char *entry_path                 = NULL;
      const char *default_core_path          =
            FUNC13(playlist);
      bool found_associated_core             = false;

      if (!FUNC18(default_core_path))
      {
         FUNC20(new_core_path, default_core_path, sizeof(new_core_path));
         FUNC16(PLAYLIST_LOAD, new_core_path, sizeof(new_core_path));
         found_associated_core = true;
      }

      core_info.inf       = NULL;
      core_info.path      = new_core_path;

      if (!FUNC6(&core_info, new_core_path))
         found_associated_core = false;

      if (!found_associated_core)
      {
         /* TODO: figure out if this should refer to the inner or outer entry_path */
         /* TODO: make sure there's only one entry_path in this function */
         int ret = FUNC1(entry_path,
               label, type, selection_ptr, entry_idx);
         if (playlist_initialized)
            FUNC11(tmp_playlist);
         return ret;
      }

      tmp_playlist = FUNC12();

      if (tmp_playlist)
      {
         struct playlist_entry entry = {0};
         entry.core_path = (char*)default_core_path;
         entry.core_name = core_info.inf->display_name;

         FUNC2(
               tmp_playlist,
               selection_ptr,
               &entry);
      }
   }
   else
   {
      FUNC20(new_core_path, entry->core_path, sizeof(new_core_path));
       FUNC16(PLAYLIST_LOAD, new_core_path, sizeof(new_core_path));
   }

   if (!playlist || !FUNC9(playlist, selection_ptr))
   {
      FUNC17(
            "File could not be loaded from playlist.\n",
            1, 100, true,
            NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      if (playlist_initialized)
         FUNC11(tmp_playlist);
      return FUNC8();
   }

   FUNC14(playlist, selection_ptr, &entry);

   FUNC20(new_path, entry->path, sizeof(new_path));
   FUNC16(PLAYLIST_LOAD, new_path, sizeof(new_path));
   return FUNC7(
            new_core_path, new_path, entry->label);
}