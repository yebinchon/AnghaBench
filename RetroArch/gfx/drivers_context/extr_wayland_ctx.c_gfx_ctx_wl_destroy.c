
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int queue_lock; } ;
struct TYPE_7__ {TYPE_1__ context; } ;
struct TYPE_8__ {TYPE_2__ vk; } ;
typedef TYPE_3__ gfx_ctx_wayland_data_t ;




 int free (TYPE_3__*) ;
 int gfx_ctx_wl_destroy_resources (TYPE_3__*) ;
 int slock_free (int ) ;
 int wl_api ;

__attribute__((used)) static void gfx_ctx_wl_destroy(void *data)
{
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;

   if (!wl)
      return;

   gfx_ctx_wl_destroy_resources(wl);

   switch (wl_api)
   {
      case 128:




         break;
      case 129:
      default:
         break;
   }

   free(wl);
}
