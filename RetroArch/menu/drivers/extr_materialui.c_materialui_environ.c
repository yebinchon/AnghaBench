
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mouse_show; } ;
typedef TYPE_1__ materialui_handle_t ;
typedef enum menu_environ_cb { ____Placeholder_menu_environ_cb } menu_environ_cb ;





__attribute__((used)) static int materialui_environ(enum menu_environ_cb type, void *data, void *userdata)
{
   materialui_handle_t *mui = (materialui_handle_t*)userdata;

   switch (type)
   {
      case 128:
         if (!mui)
            return -1;
         mui->mouse_show = 1;
         break;
      case 129:
         if (!mui)
            return -1;
         mui->mouse_show = 0;
         break;
      case 0:
      default:
         break;
   }

   return -1;
}
