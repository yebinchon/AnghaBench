#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  udev; } ;
typedef  TYPE_1__ udev_input_t ;
struct udev_list_entry {int dummy; } ;
struct udev_enumerate {int dummy; } ;
struct udev_device {int dummy; } ;
typedef  enum udev_input_dev_type { ____Placeholder_udev_input_dev_type } udev_input_dev_type ;
typedef  int /*<<< orphan*/  device_handle_cb ;

/* Variables and functions */
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,char const*) ; 
 int UDEV_INPUT_KEYBOARD ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 char** g_dev_type_str ; 
 int FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (struct udev_device*) ; 
 struct udev_device* FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct udev_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct udev_enumerate*,char const*,char*) ; 
 struct udev_list_entry* FUNC9 (struct udev_enumerate*) ; 
 struct udev_enumerate* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct udev_enumerate*) ; 
 int /*<<< orphan*/  FUNC12 (struct udev_enumerate*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC14 (struct udev_list_entry*) ; 
 struct udev_list_entry* FUNC15 (struct udev_list_entry*) ; 

__attribute__((used)) static bool FUNC16(udev_input_t *udev,
      enum udev_input_dev_type type, device_handle_cb cb)
{
   const char             *type_str = g_dev_type_str[type];
   struct udev_list_entry     *devs = NULL;
   struct udev_list_entry     *item = NULL;
   struct udev_enumerate *enumerate = FUNC10(udev->udev);
   int device_index                 = 0;

   if (!enumerate)
      return false;

   FUNC8(enumerate, type_str, "1");
   FUNC11(enumerate);
   devs = FUNC9(enumerate);

   for (item = devs; item; item = FUNC15(item))
   {
      const char *name        = FUNC14(item);

      /* Get the filename of the /sys entry for the device
       * and create a udev_device object (dev) representing it. */
      struct udev_device *dev = FUNC6(udev->udev, name);
      const char *devnode     = FUNC5(dev);

      if (devnode)
      {
         int fd = FUNC3(devnode, O_RDONLY | O_NONBLOCK);

         if (fd != -1)
         {
            if (!FUNC13(udev, type, devnode, cb))
               FUNC0("[udev] Failed to open device: %s (%s).\n",
                     devnode, FUNC4(errno));
            else
               FUNC1("[udev]: %s #%d (%s).\n",
                     type == UDEV_INPUT_KEYBOARD ? "Keyboard" : "Mouse",
                     device_index++, devnode);
            FUNC2(fd);
         }
      }

      FUNC7(dev);
   }

   FUNC12(enumerate);
   return true;
}