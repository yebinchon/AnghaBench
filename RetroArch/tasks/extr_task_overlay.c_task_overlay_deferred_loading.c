
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int range_mod; int alpha_mod; int normalized; } ;
struct TYPE_10__ {int height; int width; } ;
struct overlay {size_t pos; size_t pos_increment; size_t size; TYPE_2__ config; TYPE_1__ image; int * descs; } ;
struct TYPE_12__ {scalar_t__ state; } ;
typedef TYPE_3__ retro_task_t ;
struct TYPE_13__ {size_t pos; size_t size; int loading_status; void* state; struct overlay* overlays; } ;
typedef TYPE_4__ overlay_loader_t ;
 void* OVERLAY_STATUS_DEFERRED_ERROR ;
 void* OVERLAY_STATUS_DEFERRED_LOADING_RESOLVE ;
 int RARCH_ERR (char*,unsigned int) ;
 int task_overlay_image_done (struct overlay*) ;
 int task_overlay_load_desc (TYPE_4__*,int *,struct overlay*,size_t,unsigned int,int ,int ,int ,int ,int ) ;
 int task_overlay_load_desc_image (TYPE_4__*,int *,struct overlay*,size_t,unsigned int) ;
 int task_overlay_resolve_iterate (TYPE_3__*) ;
 int task_set_cancelled (TYPE_3__*,int) ;

__attribute__((used)) static void task_overlay_deferred_loading(retro_task_t *task)
{
   size_t i = 0;
   overlay_loader_t *loader = (overlay_loader_t*)task->state;
   struct overlay *overlay = &loader->overlays[loader->pos];
   bool not_done = loader->pos < loader->size;

   if (!not_done)
   {
      loader->state = OVERLAY_STATUS_DEFERRED_LOADING_RESOLVE;
      return;
   }

   switch (loader->loading_status)
   {
      case 128:
      case 134:
         loader->loading_status = 130;



      case 130:
         task_overlay_image_done(&loader->overlays[loader->pos]);
         loader->loading_status = 132;
         loader->overlays[loader->pos].pos = 0;
         break;
      case 132:
         for (i = 0; i < overlay->pos_increment; i++)
         {
            if (overlay->pos < overlay->size)
            {
               task_overlay_load_desc_image(loader,
                     &overlay->descs[overlay->pos], overlay,
                     loader->pos, (unsigned)overlay->pos);
            }
            else
            {
               overlay->pos = 0;
               loader->loading_status = 131;
               break;
            }

         }
         break;
      case 131:
         for (i = 0; i < overlay->pos_increment; i++)
         {
            if (overlay->pos < overlay->size)
            {
               if (!task_overlay_load_desc(loader,
                        &overlay->descs[overlay->pos], overlay,
                        loader->pos, (unsigned)overlay->pos,
                        overlay->image.width, overlay->image.height,
                        overlay->config.normalized,
                        overlay->config.alpha_mod, overlay->config.range_mod))
               {
                  RARCH_ERR("[Overlay]: Failed to load overlay descs for overlay #%u.\n",
                        (unsigned)overlay->pos);
                  task_set_cancelled(task, 1);
                  loader->state = OVERLAY_STATUS_DEFERRED_ERROR;
                  break;
               }
            }
            else
            {
               overlay->pos = 0;
               loader->loading_status = 133;
               break;
            }
         }
         break;
      case 133:
         if (loader->pos == 0)
            task_overlay_resolve_iterate(task);

         loader->pos += 1;
         loader->loading_status = 128;
         break;
      case 129:
         task_set_cancelled(task, 1);
         loader->state = OVERLAY_STATUS_DEFERRED_ERROR;
         break;
   }
}
