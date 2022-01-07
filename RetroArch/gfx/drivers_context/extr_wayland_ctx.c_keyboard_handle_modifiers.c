
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wl_keyboard {int dummy; } ;


 int handle_xkb_state_mask (int ,int ,int ,int ) ;

__attribute__((used)) static void keyboard_handle_modifiers(void *data,
      struct wl_keyboard *keyboard,
      uint32_t serial,
      uint32_t modsDepressed,
      uint32_t modsLatched,
      uint32_t modsLocked,
      uint32_t group)
{
   (void)data;
   (void)keyboard;
   (void)serial;



   (void)modsDepressed;
   (void)modsLatched;
   (void)modsLocked;
   (void)group;

}
