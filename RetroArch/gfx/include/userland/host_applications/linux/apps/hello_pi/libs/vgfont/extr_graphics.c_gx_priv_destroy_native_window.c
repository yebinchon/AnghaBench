
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int element; } ;
struct TYPE_7__ {TYPE_1__ egl_win; } ;
struct TYPE_8__ {TYPE_2__ native_window; } ;
struct TYPE_9__ {int screen_id; TYPE_3__ u; } ;
typedef TYPE_4__ GRAPHICS_RESOURCE_HANDLE_TABLE_T ;
typedef int DISPMANX_UPDATE_HANDLE_T ;


 int gx_priv_release_screen (int ) ;
 int vc_dispmanx_element_remove (int ,int ) ;
 int vc_dispmanx_update_start (int ) ;
 int vc_dispmanx_update_submit_sync (int ) ;
 int vcos_assert (int) ;

void
gx_priv_destroy_native_window(GRAPHICS_RESOURCE_HANDLE_TABLE_T *res)
{
   DISPMANX_UPDATE_HANDLE_T current_update;

   if((current_update = vc_dispmanx_update_start(0)) != 0)
   {
      int ret = vc_dispmanx_element_remove(current_update, res->u.native_window.egl_win.element);
      vcos_assert(ret == 0);
      ret = vc_dispmanx_update_submit_sync(current_update);
      vcos_assert(ret == 0);
   }

   gx_priv_release_screen(res->screen_id);
}
