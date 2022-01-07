
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_video {int keep_vsync; int sunxi_disp; struct sunxi_video* pages; int vsync_condition; int pending_mutex; int vsync_thread; int menu_active; } ;


 int free (struct sunxi_video*) ;
 int scond_free (int ) ;
 int slock_free (int ) ;
 int sthread_join (int ) ;
 int sunxi_disp_close (int ) ;
 int sunxi_restore_console (struct sunxi_video*) ;

__attribute__((used)) static void sunxi_gfx_free(void *data)
{
   struct sunxi_video *_dispvars = (struct sunxi_video*)data;



   if (!_dispvars->menu_active)
   {
      _dispvars->keep_vsync = 0;
      sthread_join(_dispvars->vsync_thread);
   }

   slock_free(_dispvars->pending_mutex);
   scond_free(_dispvars->vsync_condition);

   free(_dispvars->pages);


   sunxi_restore_console(_dispvars);

   sunxi_disp_close(_dispvars->sunxi_disp);
   free(_dispvars);
}
