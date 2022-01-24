#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  monitor; } ;
typedef  TYPE_1__ udev_input_t ;
struct udev_device {int dummy; } ;
typedef  enum udev_input_dev_type { ____Placeholder_udev_input_dev_type } udev_input_dev_type ;
typedef  int /*<<< orphan*/  device_handle_cb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char const*) ; 
 int UDEV_INPUT_KEYBOARD ; 
 int UDEV_INPUT_MOUSE ; 
 int UDEV_INPUT_TOUCHPAD ; 
 int /*<<< orphan*/ * g_dev_type_str ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 char* FUNC2 (struct udev_device*) ; 
 char* FUNC3 (struct udev_device*) ; 
 char* FUNC4 (struct udev_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct udev_device*) ; 
 int /*<<< orphan*/  udev_handle_keyboard ; 
 int /*<<< orphan*/  udev_handle_mouse ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char const*) ; 
 struct udev_device* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(udev_input_t *udev)
{
   device_handle_cb cb;
   enum udev_input_dev_type dev_type = UDEV_INPUT_KEYBOARD;
   const char *val_key               = NULL;
   const char *val_mouse             = NULL;
   const char *val_touchpad          = NULL;
   const char *action                = NULL;
   const char *devnode               = NULL;
   struct udev_device *dev           = FUNC8(
         udev->monitor);

   if (!dev)
      return;

   val_key       = FUNC4(dev, "ID_INPUT_KEY");
   val_mouse     = FUNC4(dev, "ID_INPUT_MOUSE");
   val_touchpad  = FUNC4(dev, "ID_INPUT_TOUCHPAD");
   action        = FUNC2(dev);
   devnode       = FUNC3(dev);

   if (val_key && FUNC1(val_key, "1") && devnode)
   {
      /* EV_KEY device, can be a keyboard or a remote control device.  */
      dev_type   = UDEV_INPUT_KEYBOARD;
      cb         = udev_handle_keyboard;
   }
   else if (val_mouse && FUNC1(val_mouse, "1") && devnode)
   {
      dev_type   = UDEV_INPUT_MOUSE;
      cb         = udev_handle_mouse;
   }
   else if (val_touchpad && FUNC1(val_touchpad, "1") && devnode)
   {
      dev_type   = UDEV_INPUT_TOUCHPAD;
      cb         = udev_handle_mouse;
   }
   else
      goto end;

   if (FUNC1(action, "add"))
   {
      FUNC0("[udev]: Hotplug add %s: %s.\n",
            g_dev_type_str[dev_type], devnode);
      FUNC6(udev, dev_type, devnode, cb);
   }
   else if (FUNC1(action, "remove"))
   {
      FUNC0("[udev]: Hotplug remove %s: %s.\n",
            g_dev_type_str[dev_type], devnode);
      FUNC7(udev, devnode);
   }

end:
   FUNC5(dev);
}