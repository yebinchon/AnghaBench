
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {void* userdata; int func; } ;
typedef TYPE_2__ task_finder_data_t ;
struct TYPE_11__ {char const* directory_thumbnails; } ;
struct TYPE_13__ {TYPE_1__ paths; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_14__ {int alternative_look; int type_idx; int overwrite; int status; scalar_t__ list_index; scalar_t__ list_size; int * http_task; int * thumbnail_path_data; int * playlist; void* dir_thumbnails; void* playlist_path; void* system; scalar_t__ progress; void* title; struct TYPE_14__* state; int handler; } ;
typedef TYPE_4__ retro_task_t ;
typedef TYPE_4__ pl_thumb_handle_t ;


 int FILE_PATH_CONTENT_FAVORITES ;
 int FILE_PATH_CONTENT_HISTORY ;
 int FILE_PATH_CONTENT_IMAGE_HISTORY ;
 int FILE_PATH_CONTENT_MUSIC_HISTORY ;
 int FILE_PATH_CONTENT_VIDEO_HISTORY ;
 int PL_THUMB_BEGIN ;
 scalar_t__ calloc (int,int) ;
 TYPE_3__* config_get_ptr () ;
 char* file_path_str (int ) ;
 int free (TYPE_4__*) ;
 char* path_basename (char const*) ;
 void* strdup (char const*) ;
 scalar_t__ string_is_empty (char const*) ;
 scalar_t__ string_is_equal (char const*,char*) ;
 TYPE_4__* task_init () ;
 int task_pl_thumbnail_download_handler ;
 int task_pl_thumbnail_finder ;
 scalar_t__ task_queue_find (TYPE_2__*) ;
 int task_queue_push (TYPE_4__*) ;

bool task_push_pl_thumbnail_download(
      const char *system, const char *playlist_path)
{
   task_finder_data_t find_data;
   settings_t *settings = config_get_ptr();
   retro_task_t *task = task_init();
   pl_thumb_handle_t *pl_thumb = (pl_thumb_handle_t*)calloc(1, sizeof(pl_thumb_handle_t));
   const char *playlist_file = path_basename(playlist_path);


   if (!settings || !task || !pl_thumb)
      goto error;

   if (string_is_empty(system) ||
       string_is_empty(playlist_path) ||
       string_is_empty(playlist_file) ||
       string_is_empty(settings->paths.directory_thumbnails))
      goto error;


   if (string_is_equal(playlist_file, file_path_str(FILE_PATH_CONTENT_HISTORY)) ||
       string_is_equal(playlist_file, file_path_str(FILE_PATH_CONTENT_FAVORITES)) ||
       string_is_equal(playlist_file, file_path_str(FILE_PATH_CONTENT_MUSIC_HISTORY)) ||
       string_is_equal(playlist_file, file_path_str(FILE_PATH_CONTENT_VIDEO_HISTORY)) ||
       string_is_equal(playlist_file, file_path_str(FILE_PATH_CONTENT_IMAGE_HISTORY)) ||
       string_is_equal(system, "history") ||
       string_is_equal(system, "favorites") ||
       string_is_equal(system, "images_history"))
      goto error;



   find_data.func = task_pl_thumbnail_finder;
   find_data.userdata = (void*)playlist_path;

   if (task_queue_find(&find_data))
      goto error;


   task->handler = task_pl_thumbnail_download_handler;
   task->state = pl_thumb;
   task->title = strdup(system);
   task->alternative_look = 1;
   task->progress = 0;


   pl_thumb->system = strdup(system);
   pl_thumb->playlist_path = strdup(playlist_path);
   pl_thumb->dir_thumbnails = strdup(settings->paths.directory_thumbnails);
   pl_thumb->playlist = ((void*)0);
   pl_thumb->thumbnail_path_data = ((void*)0);
   pl_thumb->http_task = ((void*)0);
   pl_thumb->list_size = 0;
   pl_thumb->list_index = 0;
   pl_thumb->type_idx = 1;
   pl_thumb->overwrite = 0;
   pl_thumb->status = PL_THUMB_BEGIN;

   task_queue_push(task);

   return 1;

error:

   if (task)
   {
      free(task);
      task = ((void*)0);
   }

   if (pl_thumb)
   {
      free(pl_thumb);
      pl_thumb = ((void*)0);
   }

   return 0;
}
