
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct wl_seat {int dummy; } ;
struct TYPE_5__ {int * wl_touch; int * wl_pointer; int * wl_keyboard; } ;
typedef TYPE_1__ gfx_ctx_wayland_data_t ;


 unsigned int WL_SEAT_CAPABILITY_KEYBOARD ;
 unsigned int WL_SEAT_CAPABILITY_POINTER ;
 unsigned int WL_SEAT_CAPABILITY_TOUCH ;
 int keyboard_listener ;
 int pointer_listener ;
 int touch_listener ;
 int wl_keyboard_add_listener (int *,int *,TYPE_1__*) ;
 int wl_keyboard_destroy (int *) ;
 int wl_pointer_add_listener (int *,int *,TYPE_1__*) ;
 int wl_pointer_destroy (int *) ;
 int * wl_seat_get_keyboard (struct wl_seat*) ;
 int * wl_seat_get_pointer (struct wl_seat*) ;
 int * wl_seat_get_touch (struct wl_seat*) ;
 int wl_touch_add_listener (int *,int *,TYPE_1__*) ;
 int wl_touch_destroy (int *) ;

__attribute__((used)) static void seat_handle_capabilities(void *data,
      struct wl_seat *seat, unsigned caps)
{
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;

   if ((caps & WL_SEAT_CAPABILITY_KEYBOARD) && !wl->wl_keyboard)
   {
      wl->wl_keyboard = wl_seat_get_keyboard(seat);
      wl_keyboard_add_listener(wl->wl_keyboard, &keyboard_listener, wl);
   }
   else if (!(caps & WL_SEAT_CAPABILITY_KEYBOARD) && wl->wl_keyboard)
   {
      wl_keyboard_destroy(wl->wl_keyboard);
      wl->wl_keyboard = ((void*)0);
   }
   if ((caps & WL_SEAT_CAPABILITY_POINTER) && !wl->wl_pointer)
   {
      wl->wl_pointer = wl_seat_get_pointer(seat);
      wl_pointer_add_listener(wl->wl_pointer, &pointer_listener, wl);
   }
   else if (!(caps & WL_SEAT_CAPABILITY_POINTER) && wl->wl_pointer)
   {
      wl_pointer_destroy(wl->wl_pointer);
      wl->wl_pointer = ((void*)0);
   }
   if ((caps & WL_SEAT_CAPABILITY_TOUCH) && !wl->wl_touch)
   {
      wl->wl_touch = wl_seat_get_touch(seat);
      wl_touch_add_listener(wl->wl_touch, &touch_listener, wl);
   }
   else if (!(caps & WL_SEAT_CAPABILITY_TOUCH) && wl->wl_touch)
   {
      wl_touch_destroy(wl->wl_touch);
      wl->wl_touch = ((void*)0);
   }

}
