
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* frame; int scaler; } ;
struct TYPE_8__ {TYPE_2__ menu; scalar_t__ font; TYPE_1__* font_driver; struct TYPE_8__* omap; } ;
typedef TYPE_3__ omap_video_t ;
struct TYPE_6__ {int (* free ) (scalar_t__) ;} ;


 int free (TYPE_3__*) ;
 int omapfb_free (TYPE_3__*) ;
 int scaler_ctx_gen_reset (int *) ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void omap_gfx_free(void *data)
{
   omap_video_t *vid = data;
   if (!vid)
      return;

   omapfb_free(vid->omap);
   free(vid->omap);

   if (vid->font)
      vid->font_driver->free(vid->font);

   scaler_ctx_gen_reset(&vid->menu.scaler);
   free(vid->menu.frame);

   free(vid);
}
