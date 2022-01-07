
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ state; } ;
typedef TYPE_1__ retro_task_t ;
struct TYPE_12__ {int status; int list_size; int list_index; int type_idx; int * http_task; int thumbnail_path_data; int playlist; int system; int playlist_path; } ;
typedef TYPE_2__ pl_thumb_handle_t ;


 int COLLECTION_SIZE ;




 int download_pl_thumbnail (TYPE_2__*) ;
 int free_pl_thumb_handle (TYPE_2__*,int) ;
 int menu_thumbnail_get_label (int ,char const**) ;
 int menu_thumbnail_path_init () ;
 int menu_thumbnail_set_content_playlist (int ,int ,int) ;
 int menu_thumbnail_set_system (int ,int ,int ) ;
 int path_is_valid (int ) ;
 int playlist_init (int ,int ) ;
 int playlist_size (int ) ;
 int strdup (char const*) ;
 int task_free_title (TYPE_1__*) ;
 scalar_t__ task_get_cancelled (TYPE_1__*) ;
 int task_get_finished (int *) ;
 int task_set_finished (TYPE_1__*,int) ;
 int task_set_progress (TYPE_1__*,int) ;
 int task_set_title (TYPE_1__*,int ) ;

__attribute__((used)) static void task_pl_thumbnail_download_handler(retro_task_t *task)
{
   pl_thumb_handle_t *pl_thumb = ((void*)0);

   if (!task)
      goto task_finished;

   pl_thumb = (pl_thumb_handle_t*)task->state;

   if (!pl_thumb)
      goto task_finished;

   if (task_get_cancelled(task))
      goto task_finished;

   switch (pl_thumb->status)
   {
      case 131:
         {

            if (!path_is_valid(pl_thumb->playlist_path))
               goto task_finished;

            pl_thumb->playlist = playlist_init(pl_thumb->playlist_path, COLLECTION_SIZE);

            if (!pl_thumb->playlist)
               goto task_finished;

            pl_thumb->list_size = playlist_size(pl_thumb->playlist);

            if (pl_thumb->list_size < 1)
               goto task_finished;


            pl_thumb->thumbnail_path_data = menu_thumbnail_path_init();

            if (!pl_thumb->thumbnail_path_data)
               goto task_finished;

            if (!menu_thumbnail_set_system(
                  pl_thumb->thumbnail_path_data, pl_thumb->system, pl_thumb->playlist))
               goto task_finished;


            pl_thumb->status = 129;
         }
         break;
      case 129:
         {

            if (menu_thumbnail_set_content_playlist(
                  pl_thumb->thumbnail_path_data, pl_thumb->playlist, pl_thumb->list_index))
            {
               const char *label = ((void*)0);


               task_free_title(task);
               if (menu_thumbnail_get_label(pl_thumb->thumbnail_path_data, &label))
                  task_set_title(task, strdup(label));
               else
                  task_set_title(task, strdup(""));
               task_set_progress(task, (pl_thumb->list_index * 100) / pl_thumb->list_size);


               pl_thumb->type_idx = 1;
               pl_thumb->status = 128;
            }
            else
            {


               pl_thumb->list_index++;
               if (pl_thumb->list_index >= pl_thumb->list_size)
                  pl_thumb->status = 130;
            }
         }
         break;
      case 128:
         {


            if (pl_thumb->http_task)
            {
               if (task_get_finished(pl_thumb->http_task))
                  pl_thumb->http_task = ((void*)0);
               else
                  break;
            }


            if (pl_thumb->type_idx > 3)
            {

               pl_thumb->list_index++;
               if (pl_thumb->list_index < pl_thumb->list_size)
                  pl_thumb->status = 129;
               else
                  pl_thumb->status = 130;
               break;
            }


            if (pl_thumb)
               download_pl_thumbnail(pl_thumb);


            pl_thumb->type_idx++;
         }
         break;
      case 130:
      default:
         task_set_progress(task, 100);
         goto task_finished;
   }

   return;

task_finished:

   if (task)
      task_set_finished(task, 1);

   free_pl_thumb_handle(pl_thumb, 1);
}
