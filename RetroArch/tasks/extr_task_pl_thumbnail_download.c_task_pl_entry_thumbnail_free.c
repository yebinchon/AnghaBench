
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
typedef TYPE_1__ retro_task_t ;
typedef int pl_thumb_handle_t ;


 int free_pl_thumb_handle (int *,int) ;

__attribute__((used)) static void task_pl_entry_thumbnail_free(retro_task_t *task)
{
   pl_thumb_handle_t *pl_thumb = ((void*)0);

   if (!task)
      return;

   pl_thumb = (pl_thumb_handle_t*)task->state;

   free_pl_thumb_handle(pl_thumb, 0);
}
