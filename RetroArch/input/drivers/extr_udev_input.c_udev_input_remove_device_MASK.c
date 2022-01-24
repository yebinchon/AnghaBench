#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned int num_devices; TYPE_3__** devices; } ;
typedef  TYPE_1__ udev_input_t ;
struct TYPE_7__ {int /*<<< orphan*/  fd; int /*<<< orphan*/  devnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**,TYPE_3__**,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(udev_input_t *udev, const char *devnode)
{
   unsigned i;

   for (i = 0; i < udev->num_devices; i++)
   {
      if (!FUNC3(devnode, udev->devices[i]->devnode))
         continue;

      FUNC0(udev->devices[i]->fd);
      FUNC1(udev->devices[i]);
      FUNC2(udev->devices + i, udev->devices + i + 1,
            (udev->num_devices - (i + 1)) * sizeof(*udev->devices));
      udev->num_devices--;
   }
}