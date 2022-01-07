
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ handler; scalar_t__ state; } ;
typedef TYPE_1__ retro_task_t ;
struct TYPE_5__ {int playlist_path; } ;
typedef TYPE_2__ pl_thumb_handle_t ;


 int string_is_equal (char const*,int ) ;
 scalar_t__ task_pl_thumbnail_download_handler ;

__attribute__((used)) static bool task_pl_thumbnail_finder(retro_task_t *task, void *user_data)
{
   pl_thumb_handle_t *pl_thumb = ((void*)0);

   if (!task || !user_data)
      return 0;

   if (task->handler != task_pl_thumbnail_download_handler)
      return 0;

   pl_thumb = (pl_thumb_handle_t*)task->state;
   if (!pl_thumb)
      return 0;

   return string_is_equal((const char*)user_data, pl_thumb->playlist_path);
}
