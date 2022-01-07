
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ handler; scalar_t__ state; } ;
typedef TYPE_1__ retro_task_t ;
struct TYPE_6__ {scalar_t__ list_index; int playlist_path; } ;
typedef TYPE_2__ pl_thumb_handle_t ;
struct TYPE_7__ {scalar_t__ idx; int playlist_path; } ;
typedef TYPE_3__ pl_entry_id_t ;


 scalar_t__ string_is_equal (int ,int ) ;
 scalar_t__ task_pl_entry_thumbnail_download_handler ;

__attribute__((used)) static bool task_pl_entry_thumbnail_finder(retro_task_t *task, void *user_data)
{
   pl_entry_id_t *entry_id = ((void*)0);
   pl_thumb_handle_t *pl_thumb = ((void*)0);

   if (!task || !user_data)
      return 0;

   if (task->handler != task_pl_entry_thumbnail_download_handler)
      return 0;

   entry_id = (pl_entry_id_t*)user_data;
   if (!entry_id)
      return 0;

   pl_thumb = (pl_thumb_handle_t*)task->state;
   if (!pl_thumb)
      return 0;

   return (entry_id->idx == pl_thumb->list_index) &&
          string_is_equal(entry_id->playlist_path, pl_thumb->playlist_path);
}
