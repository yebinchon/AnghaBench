
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ state; } ;
typedef TYPE_2__ retro_task_t ;
struct TYPE_6__ {int enable; int opacity; } ;
struct TYPE_8__ {scalar_t__ resolve_pos; scalar_t__ size; TYPE_1__ deferred; int * overlays; int * active; int state; } ;
typedef TYPE_3__ overlay_loader_t ;


 int OVERLAY_STATUS_DEFERRED_DONE ;
 int OVERLAY_STATUS_DEFERRED_ERROR ;
 int RARCH_ERR (char*) ;
 int input_overlay_enable (int ) ;
 int input_overlay_load_active (int ) ;
 int task_overlay_resolve_targets (int *,scalar_t__,scalar_t__) ;
 int task_set_cancelled (TYPE_2__*,int) ;

__attribute__((used)) static void task_overlay_resolve_iterate(retro_task_t *task)
{
   overlay_loader_t *loader = (overlay_loader_t*)task->state;
   bool not_done = loader->resolve_pos < loader->size;

   if (!not_done)
   {
      loader->state = OVERLAY_STATUS_DEFERRED_DONE;
      return;
   }

   if (!task_overlay_resolve_targets(loader->overlays,
            loader->resolve_pos, loader->size))
   {
      RARCH_ERR("[Overlay]: Failed to resolve next targets.\n");
      task_set_cancelled(task, 1);
      loader->state = OVERLAY_STATUS_DEFERRED_ERROR;
      return;
   }

   if (loader->resolve_pos == 0)
   {
      loader->active = &loader->overlays[0];






   }

   loader->resolve_pos += 1;
}
