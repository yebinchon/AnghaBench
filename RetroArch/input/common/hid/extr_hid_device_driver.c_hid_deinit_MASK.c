#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pad_list; scalar_t__ os_driver_data; TYPE_1__* os_driver; } ;
typedef  TYPE_2__ hid_driver_instance_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* free ) (scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(hid_driver_instance_t *instance)
{
   if(!instance)
      return;

   FUNC0("[hid]: destroying instance\n");

   if(instance->os_driver && instance->os_driver_data)
   {
      FUNC0("[hid]: tearing down HID subsystem driver...\n");
      instance->os_driver->free(instance->os_driver_data);
   }

   FUNC0("[hid]: destroying pad data...\n");
   FUNC2(instance->pad_list);

   FUNC0("[hid]: wiping instance data...\n");
   FUNC1(instance, 0, sizeof(hid_driver_instance_t));
}