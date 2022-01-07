
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ handler; scalar_t__ state; } ;
typedef TYPE_1__ retro_task_t ;
struct TYPE_5__ {int overlay_path; } ;
typedef TYPE_2__ overlay_loader_t ;


 int string_is_equal (int ,char const*) ;
 scalar_t__ task_overlay_handler ;

__attribute__((used)) static bool task_overlay_finder(retro_task_t *task, void *user_data)
{
   overlay_loader_t *loader = ((void*)0);

   if (!task || (task->handler != task_overlay_handler))
      return 0;

   if (!user_data)
      return 0;

   loader = (overlay_loader_t*)task->state;
   if (!loader)
      return 0;

   return string_is_equal(loader->overlay_path, (const char*)user_data);
}
