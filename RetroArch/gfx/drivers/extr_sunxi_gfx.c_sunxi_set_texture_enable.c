
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_video {int menu_active; int keep_vsync; int vsync_thread; } ;


 int sthread_create (int ,struct sunxi_video*) ;
 int sthread_join (int ) ;
 int sunxi_vsync_thread_func ;

__attribute__((used)) static void sunxi_set_texture_enable(void *data, bool state, bool full_screen)
{
   struct sunxi_video *_dispvars = (struct sunxi_video*)data;


   if (!_dispvars->menu_active && state)
   {

      _dispvars->keep_vsync = 0;
      sthread_join(_dispvars->vsync_thread);
   }


   if (_dispvars->menu_active && !state)
   {
      _dispvars->keep_vsync = 1;
      _dispvars->vsync_thread = sthread_create(sunxi_vsync_thread_func, _dispvars);
   }
   _dispvars->menu_active = state;
}
