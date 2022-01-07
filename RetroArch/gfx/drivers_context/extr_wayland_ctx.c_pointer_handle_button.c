
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct wl_pointer {int dummy; } ;
struct TYPE_4__ {int left; int right; int middle; } ;
struct TYPE_5__ {TYPE_1__ mouse; int key_state; } ;
struct TYPE_6__ {TYPE_2__ input; int seat; scalar_t__ zxdg_toplevel; scalar_t__ xdg_toplevel; } ;
typedef TYPE_3__ gfx_ctx_wayland_data_t ;


 scalar_t__ BIT_GET (int ,int ) ;
 scalar_t__ BTN_LEFT ;
 scalar_t__ BTN_MIDDLE ;
 scalar_t__ BTN_RIGHT ;
 int KEY_LEFTALT ;
 scalar_t__ WL_POINTER_BUTTON_STATE_PRESSED ;
 int xdg_toplevel_move (scalar_t__,int ,scalar_t__) ;
 int zxdg_toplevel_v6_move (scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static void pointer_handle_button(void *data,
      struct wl_pointer *wl_pointer,
      uint32_t serial,
      uint32_t time,
      uint32_t button,
      uint32_t state)
{
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;

   if (state == WL_POINTER_BUTTON_STATE_PRESSED)
   {
      if (button == BTN_LEFT)
      {
         wl->input.mouse.left = 1;

         if (BIT_GET(wl->input.key_state, KEY_LEFTALT))
         {
    if (wl->xdg_toplevel)
      xdg_toplevel_move(wl->xdg_toplevel, wl->seat, serial);
    else if (wl->zxdg_toplevel)
      zxdg_toplevel_v6_move(wl->zxdg_toplevel, wl->seat, serial);
         }
      }
      else if (button == BTN_RIGHT)
         wl->input.mouse.right = 1;
      else if (button == BTN_MIDDLE)
         wl->input.mouse.middle = 1;
   }
   else
   {
      if (button == BTN_LEFT)
         wl->input.mouse.left = 0;
      else if (button == BTN_RIGHT)
         wl->input.mouse.right = 0;
      else if (button == BTN_MIDDLE)
         wl->input.mouse.middle = 0;
   }
}
