
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int task_title ;
struct playlist_entry {char* label; char* path; char* core_path; char* core_name; int member_0; } ;
struct TYPE_10__ {scalar_t__ state; } ;
typedef TYPE_1__ retro_task_t ;
typedef int playlist_t ;
struct TYPE_11__ {int status; int list_size; int list_index; char* playlist_name; int playlist_path; int playlist; } ;
typedef TYPE_2__ pl_manager_handle_t ;
typedef int entry_name ;


 int COLLECTION_SIZE ;
 int MSG_PLAYLIST_MANAGER_CORES_RESET ;
 int MSG_PLAYLIST_MANAGER_RESETTING_CORES ;
 int PATH_MAX_LENGTH ;



 int fill_pathname_base_noext (char*,char*,int) ;
 int free_pl_manager_handle (TYPE_2__*) ;
 int msg_hash_to_str (int ) ;
 int path_is_valid (int ) ;
 int playlist_free_cached () ;
 int * playlist_get_cached () ;
 int playlist_get_conf_path (int *) ;
 int playlist_get_index (int ,int,struct playlist_entry const**) ;
 int playlist_init (int ,int ) ;
 int playlist_init_cached (int ,int ) ;
 int playlist_size (int ) ;
 int playlist_update (int ,int,struct playlist_entry*) ;
 int playlist_write_file (int ) ;
 int strdup (char*) ;
 int string_is_empty (char*) ;
 int string_is_equal (int ,int ) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,int ,int) ;
 int task_free_title (TYPE_1__*) ;
 scalar_t__ task_get_cancelled (TYPE_1__*) ;
 int task_set_finished (TYPE_1__*,int) ;
 int task_set_progress (TYPE_1__*,int) ;
 int task_set_title (TYPE_1__*,int ) ;

__attribute__((used)) static void task_pl_manager_reset_cores_handler(retro_task_t *task)
{
   pl_manager_handle_t *pl_manager = ((void*)0);

   if (!task)
      goto task_finished;

   pl_manager = (pl_manager_handle_t*)task->state;

   if (!pl_manager)
      goto task_finished;

   if (task_get_cancelled(task))
      goto task_finished;

   switch (pl_manager->status)
   {
      case 130:
         {

            if (!path_is_valid(pl_manager->playlist_path))
               goto task_finished;

            pl_manager->playlist = playlist_init(pl_manager->playlist_path, COLLECTION_SIZE);

            if (!pl_manager->playlist)
               goto task_finished;

            pl_manager->list_size = playlist_size(pl_manager->playlist);

            if (pl_manager->list_size < 1)
               goto task_finished;


            pl_manager->status = 128;
         }
         break;
      case 128:
         {
            const struct playlist_entry *entry = ((void*)0);


            playlist_get_index(
                  pl_manager->playlist, pl_manager->list_index, &entry);

            if (entry)
            {
               struct playlist_entry update_entry = {0};
               char task_title[PATH_MAX_LENGTH];
               char detect_string[PATH_MAX_LENGTH];

               task_title[0] = '\0';
               detect_string[0] = '\0';


               task_free_title(task);

               strlcpy(
                     task_title, msg_hash_to_str(MSG_PLAYLIST_MANAGER_RESETTING_CORES),
                     sizeof(task_title));

               if (!string_is_empty(entry->label))
                  strlcat(task_title, entry->label, sizeof(task_title));
               else if (!string_is_empty(entry->path))
               {
                  char entry_name[PATH_MAX_LENGTH];
                  entry_name[0] = '\0';

                  fill_pathname_base_noext(entry_name, entry->path, sizeof(entry_name));
                  strlcat(task_title, entry_name, sizeof(task_title));
               }

               task_set_title(task, strdup(task_title));
               task_set_progress(task, (pl_manager->list_index * 100) / pl_manager->list_size);


               detect_string[0] = 'D';
               detect_string[1] = 'E';
               detect_string[2] = 'T';
               detect_string[3] = 'E';
               detect_string[4] = 'C';
               detect_string[5] = 'T';
               detect_string[6] = '\0';

               update_entry.core_path = detect_string;
               update_entry.core_name = detect_string;

               playlist_update(
                     pl_manager->playlist, pl_manager->list_index, &update_entry);
            }


            pl_manager->list_index++;
            if (pl_manager->list_index >= pl_manager->list_size)
               pl_manager->status = 129;
         }
         break;
      case 129:
         {
            playlist_t *cached_playlist = playlist_get_cached();
            char task_title[PATH_MAX_LENGTH];

            task_title[0] = '\0';


            playlist_write_file(pl_manager->playlist);





            if (cached_playlist)
            {
               if (string_is_equal(pl_manager->playlist_path, playlist_get_conf_path(cached_playlist)))
               {
                  playlist_free_cached();
                  playlist_init_cached(pl_manager->playlist_path, COLLECTION_SIZE);
               }
            }


            task_free_title(task);

            strlcpy(
                  task_title, msg_hash_to_str(MSG_PLAYLIST_MANAGER_CORES_RESET),
                  sizeof(task_title));
            strlcat(task_title, pl_manager->playlist_name, sizeof(task_title));

            task_set_title(task, strdup(task_title));
         }

      default:
         task_set_progress(task, 100);
         goto task_finished;
   }

   return;

task_finished:

   if (task)
      task_set_finished(task, 1);

   free_pl_manager_handle(pl_manager);
}
