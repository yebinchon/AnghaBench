#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int quit; int /*<<< orphan*/  ctx; int /*<<< orphan*/  hp; scalar_t__ can_hotplug; scalar_t__ slots; scalar_t__ poll_thread; } ;
typedef  TYPE_2__ libusb_hid_t ;
struct TYPE_8__ {TYPE_1__* next; } ;
struct TYPE_6__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_5__ adapters ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(const void *data)
{
   libusb_hid_t *hid = (libusb_hid_t*)data;

   while(adapters.next)
      if (FUNC5(hid, adapters.next->device) == -1)
         FUNC0("could not remove device %p\n",
               adapters.next->device);

   if (hid->poll_thread)
   {
      hid->quit = 1;
      FUNC6(hid->poll_thread);
   }

   if (hid->slots)
      FUNC4(hid->slots);

   if (hid->can_hotplug)
      FUNC3(hid->ctx, hid->hp);

   FUNC2(hid->ctx);
   FUNC1(hid);
}