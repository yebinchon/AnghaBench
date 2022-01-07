
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mouse_show; } ;
typedef TYPE_1__ xmb_handle_t ;
typedef enum menu_environ_cb { ____Placeholder_menu_environ_cb } menu_environ_cb ;





 int xmb_refresh_horizontal_list (TYPE_1__*) ;

__attribute__((used)) static int xmb_environ(enum menu_environ_cb type, void *data, void *userdata)
{
   xmb_handle_t *xmb = (xmb_handle_t*)userdata;

   switch (type)
   {
      case 129:
         if (!xmb)
            return -1;
         xmb->mouse_show = 1;
         break;
      case 130:
         if (!xmb)
            return -1;
         xmb->mouse_show = 0;
         break;
      case 128:
         if (!xmb)
            return -1;

         xmb_refresh_horizontal_list(xmb);
         break;
      default:
         return -1;
   }

   return 0;
}
