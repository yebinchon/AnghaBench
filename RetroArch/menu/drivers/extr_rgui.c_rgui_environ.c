
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mouse_show; } ;
typedef TYPE_1__ rgui_t ;
typedef enum menu_environ_cb { ____Placeholder_menu_environ_cb } menu_environ_cb ;




 int menu_display_set_framebuffer_dirty_flag () ;
 int menu_display_unset_framebuffer_dirty_flag () ;

__attribute__((used)) static int rgui_environ(enum menu_environ_cb type,
      void *data, void *userdata)
{
   rgui_t *rgui = (rgui_t*)userdata;

   switch (type)
   {
      case 128:
         if (!rgui)
            return -1;
         rgui->mouse_show = 1;
         menu_display_set_framebuffer_dirty_flag();
         break;
      case 129:
         if (!rgui)
            return -1;
         rgui->mouse_show = 0;
         menu_display_unset_framebuffer_dirty_flag();
         break;
      case 0:
      default:
         break;
   }

   return -1;
}
