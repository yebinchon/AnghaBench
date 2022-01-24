#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int mouse_show; } ;
typedef  TYPE_1__ rgui_t ;
typedef  enum menu_environ_cb { ____Placeholder_menu_environ_cb } menu_environ_cb ;

/* Variables and functions */
#define  MENU_ENVIRON_DISABLE_MOUSE_CURSOR 129 
#define  MENU_ENVIRON_ENABLE_MOUSE_CURSOR 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int FUNC2(enum menu_environ_cb type,
      void *data, void *userdata)
{
   rgui_t           *rgui = (rgui_t*)userdata;

   switch (type)
   {
      case MENU_ENVIRON_ENABLE_MOUSE_CURSOR:
         if (!rgui)
            return -1;
         rgui->mouse_show = true;
         FUNC0();
         break;
      case MENU_ENVIRON_DISABLE_MOUSE_CURSOR:
         if (!rgui)
            return -1;
         rgui->mouse_show = false;
         FUNC1();
         break;
      case 0:
      default:
         break;
   }

   return -1;
}