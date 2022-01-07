
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_13__ {int width; int height; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_2__ VC_RECT_T ;
struct TYPE_14__ {int flags; } ;
typedef TYPE_3__ VC_DISPMANX_ALPHA_T ;
struct TYPE_12__ {int width; int height; int element; } ;
struct TYPE_15__ {TYPE_1__ egl_win; } ;
typedef TYPE_4__ GX_NATIVE_WINDOW_T ;
typedef int GRAPHICS_RESOURCE_TYPE_T ;
typedef scalar_t__ DISPMANX_UPDATE_HANDLE_T ;
typedef int DISPMANX_DISPLAY_HANDLE_T ;
typedef TYPE_3__ DISPMANX_CLAMP_T ;


 int DISPMANX_FLAGS_ALPHA_FROM_SOURCE ;
 int DISPMANX_PROTECTION_NONE ;
 int GX_LOG (char*,int,...) ;
 int gx_priv_open_screen (int,int *) ;
 int gx_priv_release_screen (int) ;
 int memset (TYPE_3__*,int,int) ;
 int vc_dispmanx_element_add (scalar_t__,int ,int ,TYPE_2__*,int ,TYPE_2__*,int ,TYPE_3__*,TYPE_3__*,int ) ;
 scalar_t__ vc_dispmanx_update_start (int ) ;
 int vc_dispmanx_update_submit_sync (scalar_t__) ;

int gx_priv_create_native_window(uint32_t screen_id,
                                 uint32_t w, uint32_t h,
                                 GRAPHICS_RESOURCE_TYPE_T type,
                                 GX_NATIVE_WINDOW_T *win,
                                 void **cookie)
{
   int rc;
   DISPMANX_DISPLAY_HANDLE_T dispmanx_display;
   VC_RECT_T dst_rect;
   VC_RECT_T src_rect;
   DISPMANX_UPDATE_HANDLE_T current_update;
   *cookie = ((void*)0);

   rc = gx_priv_open_screen(screen_id, &dispmanx_display);
   if (rc < 0)
   {
      GX_LOG("Could not open display %d", screen_id);
      goto fail_screen;
   }

   current_update = vc_dispmanx_update_start(0);
   if (!current_update)
   {
      GX_LOG("Could not start update on screen %d", screen_id);
      goto fail_update;
   }

   src_rect.x = src_rect.y = 0;
   src_rect.width = w << 16;
   src_rect.height = h << 16;

   dst_rect.x = dst_rect.y = 0;
   dst_rect.width = dst_rect.height = 1;

   win->egl_win.width = w;
   win->egl_win.height = h;
   VC_DISPMANX_ALPHA_T alpha;
   memset(&alpha, 0x0, sizeof(VC_DISPMANX_ALPHA_T));
   alpha.flags = DISPMANX_FLAGS_ALPHA_FROM_SOURCE;

   DISPMANX_CLAMP_T clamp;
   memset(&clamp, 0x0, sizeof(DISPMANX_CLAMP_T));

   win->egl_win.element = vc_dispmanx_element_add(current_update, dispmanx_display,
      0 , &dst_rect,
      0 , &src_rect,
      DISPMANX_PROTECTION_NONE,
      &alpha ,
      &clamp ,
      0 );

   if ( !win->egl_win.element )
   {
      GX_LOG("Could not add element %dx%d",w,h);
      vc_dispmanx_update_submit_sync(current_update);
      rc = -1;
   }



   *cookie = (void*)current_update;

   return 0;

fail_update:
   gx_priv_release_screen(screen_id);
fail_screen:
   return rc;
}
