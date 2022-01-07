
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ state; } ;
typedef TYPE_1__ retro_task_t ;
struct TYPE_11__ {int status; int right_thumbnail_exists; int left_thumbnail_exists; int type_idx; int * http_task; int thumbnail_path_data; int list_index; int playlist; int system; } ;
typedef TYPE_2__ pl_thumb_handle_t ;


 int MENU_THUMBNAIL_LEFT ;
 int MENU_THUMBNAIL_RIGHT ;



 int download_pl_thumbnail (TYPE_2__*) ;
 int menu_thumbnail_get_label (int ,char const**) ;
 int menu_thumbnail_get_path (int ,int ,char const**) ;
 int menu_thumbnail_path_init () ;
 int menu_thumbnail_set_content_playlist (int ,int ,int ) ;
 int menu_thumbnail_set_system (int ,int ,int ) ;
 int menu_thumbnail_update_path (int ,int ) ;
 void* path_is_valid (char const*) ;
 int strdup (char const*) ;
 int task_free_title (TYPE_1__*) ;
 scalar_t__ task_get_cancelled (TYPE_1__*) ;
 int task_get_finished (int *) ;
 int task_set_finished (TYPE_1__*,int) ;
 int task_set_progress (TYPE_1__*,int) ;
 int task_set_title (TYPE_1__*,int ) ;

__attribute__((used)) static void task_pl_entry_thumbnail_download_handler(retro_task_t *task)
{
   pl_thumb_handle_t *pl_thumb = ((void*)0);

   if (!task)
      return;

   pl_thumb = (pl_thumb_handle_t*)task->state;

   if (!pl_thumb)
      goto task_finished;

   if (task_get_cancelled(task))
      goto task_finished;

   switch (pl_thumb->status)
   {
      case 130:
         {
            const char *label = ((void*)0);
            const char *right_thumbnail_path = ((void*)0);
            const char *left_thumbnail_path = ((void*)0);


            pl_thumb->thumbnail_path_data = menu_thumbnail_path_init();

            if (!pl_thumb->thumbnail_path_data)
               goto task_finished;

            if (!menu_thumbnail_set_system(
                  pl_thumb->thumbnail_path_data, pl_thumb->system, pl_thumb->playlist))
               goto task_finished;

            if (!menu_thumbnail_set_content_playlist(
                  pl_thumb->thumbnail_path_data, pl_thumb->playlist, pl_thumb->list_index))
               goto task_finished;



            pl_thumb->right_thumbnail_exists = 0;
            if (menu_thumbnail_update_path(pl_thumb->thumbnail_path_data, MENU_THUMBNAIL_RIGHT))
               if (menu_thumbnail_get_path(pl_thumb->thumbnail_path_data, MENU_THUMBNAIL_RIGHT, &right_thumbnail_path))
                  pl_thumb->right_thumbnail_exists = path_is_valid(right_thumbnail_path);

            pl_thumb->left_thumbnail_exists = 0;
            if (menu_thumbnail_update_path(pl_thumb->thumbnail_path_data, MENU_THUMBNAIL_LEFT))
               if (menu_thumbnail_get_path(pl_thumb->thumbnail_path_data, MENU_THUMBNAIL_LEFT, &left_thumbnail_path))
                  pl_thumb->left_thumbnail_exists = path_is_valid(left_thumbnail_path);


            task_free_title(task);
            if (menu_thumbnail_get_label(pl_thumb->thumbnail_path_data, &label))
               task_set_title(task, strdup(label));
            else
               task_set_title(task, strdup(""));
            task_set_progress(task, 0);


            pl_thumb->status = 128;
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
               pl_thumb->status = 129;
               break;
            }


            task_set_progress(task, ((pl_thumb->type_idx - 1) * 100) / 3);


            if (pl_thumb)
               download_pl_thumbnail(pl_thumb);


            pl_thumb->type_idx++;
         }
         break;
      case 129:
      default:
         task_set_progress(task, 100);
         goto task_finished;
   }

   return;

task_finished:

   if (task)
      task_set_finished(task, 1);
}
