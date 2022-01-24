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
struct TYPE_5__ {scalar_t__ type; } ;
typedef  TYPE_1__ wiiu_attach_event ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  HIDDevice ;
typedef  int /*<<< orphan*/  HIDClient ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_UNUSED ; 
 int /*<<< orphan*/  DEVICE_USED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int32_t FUNC5(HIDClient *client,
      HIDDevice *device, uint32_t attach)
{
   wiiu_attach_event *event = NULL;

   if (attach)
   {
      FUNC0("[hid]: Device attach event generated.\n");
      FUNC2(device);
   }
   else
   {
      FUNC0("[hid]: Device detach event generated.\n");
   }

   if (device)
      event = FUNC3(device);

   if (!event)
      goto error;

   event->type = attach;
   FUNC4(event);

   return DEVICE_USED;

error:
   FUNC1(event);
   return DEVICE_UNUSED;
}