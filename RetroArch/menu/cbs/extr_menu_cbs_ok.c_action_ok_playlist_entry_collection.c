
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct playlist_entry {char const* subsystem_ident; char* core_path; char* core_name; char const* path; int label; int member_0; TYPE_2__* subsystem_roms; } ;
typedef int playlist_t ;
typedef int new_path ;
typedef int new_core_path ;
struct TYPE_14__ {int db_playlist_file; } ;
typedef TYPE_4__ menu_handle_t ;
struct TYPE_15__ {char* path; TYPE_3__* inf; } ;
typedef TYPE_5__ core_info_ctx_find_t ;
struct TYPE_16__ {int member_0; } ;
typedef TYPE_6__ content_ctx_info_t ;
struct TYPE_13__ {char* display_name; } ;
struct TYPE_12__ {unsigned int size; TYPE_1__* elems; } ;
struct TYPE_11__ {int data; } ;


 int COLLECTION_SIZE ;
 int CORE_TYPE_PLAIN ;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int PATH_MAX_LENGTH ;
 int PLAYLIST_LOAD ;
 int RARCH_LOG (char*) ;
 int action_ok_file_load_with_detect_core_collection (char const*,char const*,unsigned int,size_t,size_t) ;
 int command_playlist_update_write (int *,size_t,struct playlist_entry*) ;
 int content_add_subsystem (int ) ;
 int content_clear_subsystem () ;
 int content_set_subsystem_by_name (char const*) ;
 int core_info_find (TYPE_5__*,char*) ;
 int default_action_ok_load_content_from_playlist_from_menu (char*,char*,int ) ;
 int menu_cbs_exit () ;
 int menu_content_playlist_load (int *,size_t) ;
 TYPE_4__* menu_driver_get_ptr () ;
 int playlist_free (int *) ;
 int * playlist_get_cached () ;
 char* playlist_get_default_core_path (int *) ;
 int playlist_get_index (int *,size_t,struct playlist_entry const**) ;
 int * playlist_init (int ,int ) ;
 int playlist_resolve_path (int ,char*,int) ;
 int runloop_msg_queue_push (char*,int,int,int,int *,int ,int ) ;
 int string_is_empty (char const*) ;
 scalar_t__ string_is_equal (char*,char*) ;
 int strlcpy (char*,char const*,int) ;
 int task_push_load_new_core (char*,int *,TYPE_6__*,int ,int *,int *) ;
 int task_push_load_subsystem_with_core_from_menu (int *,TYPE_6__*,int ,int *,int *) ;

__attribute__((used)) static int action_ok_playlist_entry_collection(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   char new_path[PATH_MAX_LENGTH];
   char new_core_path[PATH_MAX_LENGTH];
   size_t selection_ptr = 0;
   bool playlist_initialized = 0;
   playlist_t *playlist = ((void*)0);
   playlist_t *tmp_playlist = ((void*)0);
   const struct playlist_entry *entry = ((void*)0);
   unsigned i = 0;
   menu_handle_t *menu = menu_driver_get_ptr();

   if (!menu)
      return menu_cbs_exit();

   new_path[0] = '\0';
   new_core_path[0] = '\0';
   tmp_playlist = playlist_get_cached();

   if (!tmp_playlist)
   {
      tmp_playlist = playlist_init(
            menu->db_playlist_file, COLLECTION_SIZE);

      if (!tmp_playlist)
         return menu_cbs_exit();

      playlist_initialized = 1;
   }

   playlist = tmp_playlist;
   selection_ptr = entry_idx;

   playlist_get_index(playlist, selection_ptr, &entry);


   if (!string_is_empty(entry->subsystem_ident))
   {
      content_ctx_info_t content_info = {0};

      task_push_load_new_core(entry->core_path, ((void*)0),
            &content_info, CORE_TYPE_PLAIN, ((void*)0), ((void*)0));

      content_clear_subsystem();

      if (!content_set_subsystem_by_name(entry->subsystem_ident))
      {
         RARCH_LOG("[playlist] subsystem not found in implementation\n");

         return 0;
      }

      for (i = 0; i < entry->subsystem_roms->size; i++)
         content_add_subsystem(entry->subsystem_roms->elems[i].data);

      task_push_load_subsystem_with_core_from_menu(
         ((void*)0), &content_info,
         CORE_TYPE_PLAIN, ((void*)0), ((void*)0));

      return 1;
   }


   if ( string_is_equal(entry->core_path, "DETECT")
         && string_is_equal(entry->core_name, "DETECT"))
   {
      core_info_ctx_find_t core_info;
      const char *entry_path = ((void*)0);
      const char *default_core_path =
            playlist_get_default_core_path(playlist);
      bool found_associated_core = 0;

      if (!string_is_empty(default_core_path))
      {
         strlcpy(new_core_path, default_core_path, sizeof(new_core_path));
         playlist_resolve_path(PLAYLIST_LOAD, new_core_path, sizeof(new_core_path));
         found_associated_core = 1;
      }

      core_info.inf = ((void*)0);
      core_info.path = new_core_path;

      if (!core_info_find(&core_info, new_core_path))
         found_associated_core = 0;

      if (!found_associated_core)
      {


         int ret = action_ok_file_load_with_detect_core_collection(entry_path,
               label, type, selection_ptr, entry_idx);
         if (playlist_initialized)
            playlist_free(tmp_playlist);
         return ret;
      }

      tmp_playlist = playlist_get_cached();

      if (tmp_playlist)
      {
         struct playlist_entry entry = {0};
         entry.core_path = (char*)default_core_path;
         entry.core_name = core_info.inf->display_name;

         command_playlist_update_write(
               tmp_playlist,
               selection_ptr,
               &entry);
      }
   }
   else
   {
      strlcpy(new_core_path, entry->core_path, sizeof(new_core_path));
       playlist_resolve_path(PLAYLIST_LOAD, new_core_path, sizeof(new_core_path));
   }

   if (!playlist || !menu_content_playlist_load(playlist, selection_ptr))
   {
      runloop_msg_queue_push(
            "File could not be loaded from playlist.\n",
            1, 100, 1,
            ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      if (playlist_initialized)
         playlist_free(tmp_playlist);
      return menu_cbs_exit();
   }

   playlist_get_index(playlist, selection_ptr, &entry);

   strlcpy(new_path, entry->path, sizeof(new_path));
   playlist_resolve_path(PLAYLIST_LOAD, new_path, sizeof(new_path));
   return default_action_ok_load_content_from_playlist_from_menu(
            new_core_path, new_path, entry->label);
}
