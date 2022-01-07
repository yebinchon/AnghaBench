
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ state; } ;
typedef TYPE_1__ retro_task_t ;
struct TYPE_15__ {int overlay_scale; int overlay_opacity; int overlay_enable; int hide_in_menu; int active; int size; int overlays; } ;
typedef TYPE_2__ overlay_task_data_t ;
struct TYPE_16__ {int state; int overlay_scale; int overlay_opacity; int overlay_enable; int overlay_hide_in_menu; int active; int size; int overlays; } ;
typedef TYPE_3__ overlay_loader_t ;
 scalar_t__ calloc (int,int) ;
 int task_get_cancelled (TYPE_1__*) ;
 scalar_t__ task_get_finished (TYPE_1__*) ;
 int task_overlay_deferred_load (TYPE_1__*) ;
 int task_overlay_deferred_loading (TYPE_1__*) ;
 int task_overlay_resolve_iterate (TYPE_1__*) ;
 int task_set_cancelled (TYPE_1__*,int) ;
 int task_set_data (TYPE_1__*,TYPE_2__*) ;
 int task_set_finished (TYPE_1__*,int) ;

__attribute__((used)) static void task_overlay_handler(retro_task_t *task)
{
   overlay_loader_t *loader = (overlay_loader_t*)task->state;

   switch (loader->state)
   {
      case 130:
         task_overlay_deferred_loading(task);
         break;
      case 131:
         task_overlay_deferred_load(task);
         break;
      case 129:
         task_overlay_resolve_iterate(task);
         break;
      case 132:
         task_set_cancelled(task, 1);
         break;
      case 133:
      default:
      case 128:
         task_set_finished(task, 1);
         break;
   }

   if (task_get_finished(task) && !task_get_cancelled(task))
   {
      overlay_task_data_t *data = (overlay_task_data_t*)
         calloc(1, sizeof(*data));

      data->overlays = loader->overlays;
      data->size = loader->size;
      data->active = loader->active;
      data->hide_in_menu = loader->overlay_hide_in_menu;
      data->overlay_enable = loader->overlay_enable;
      data->overlay_opacity = loader->overlay_opacity;
      data->overlay_scale = loader->overlay_scale;

      task_set_data(task, data);
   }
}
