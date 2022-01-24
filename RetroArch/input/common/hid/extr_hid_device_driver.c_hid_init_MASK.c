#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  input_device_driver_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* free ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* init ) () ;} ;
typedef  TYPE_1__ hid_driver_t ;
struct TYPE_7__ {int /*<<< orphan*/ * pad_driver; TYPE_1__* os_driver; int /*<<< orphan*/ * os_driver_data; } ;
typedef  TYPE_2__ hid_driver_instance_t ;

/* Variables and functions */
 unsigned int MAX_USERS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

bool FUNC4(hid_driver_instance_t *instance,
              hid_driver_t *hid_driver,
              input_device_driver_t *pad_driver,
              unsigned slots)
{
   FUNC0("[hid]: initializing instance with %d pad slots\n", slots);
   if(!instance || !hid_driver || !pad_driver || slots > MAX_USERS)
      return false;

   FUNC0("[hid]: initializing HID subsystem driver...\n");
   instance->os_driver_data = hid_driver->init();
   if(!instance->os_driver_data)
      return false;

   if(!FUNC1(instance, slots))
   {
      hid_driver->free(instance->os_driver_data);
      instance->os_driver_data = NULL;
      return false;
   }

   instance->os_driver = hid_driver;
   instance->pad_driver = pad_driver;

   FUNC0("[hid]: instance initialization complete.\n");

   return true;
}