
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct wl_keyboard {int dummy; } ;


 int RARCH_ERR (char*) ;
 int RARCH_LOG (char*) ;
 scalar_t__ WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1 ;
 int close (int) ;
 scalar_t__ init_xkb (int,scalar_t__) ;

__attribute__((used)) static void keyboard_handle_keymap(void* data,
      struct wl_keyboard* keyboard,
      uint32_t format,
      int fd,
      uint32_t size)
{
   (void)data;
   if (format != WL_KEYBOARD_KEYMAP_FORMAT_XKB_V1)
   {
      close(fd);
      return;
   }





   close(fd);

   RARCH_LOG("[Wayland]: Loaded keymap.\n");
}
