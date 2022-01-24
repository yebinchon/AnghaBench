#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int poll_thread_quit; int /*<<< orphan*/  connections; struct wiiusb_adapter* adapters_head; int /*<<< orphan*/  manual_removal; scalar_t__ poll_thread; } ;
typedef  TYPE_1__ wiiusb_hid_t ;
struct wiiusb_adapter {struct wiiusb_adapter* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct wiiusb_adapter*) ; 

__attribute__((used)) static void FUNC4(const void *data)
{
   struct wiiusb_adapter      *adapter = NULL;
   struct wiiusb_adapter *next_adapter = NULL;
   wiiusb_hid_t                   *hid = (wiiusb_hid_t*)data;

   if (!hid)
      return;

   hid->poll_thread_quit = true;

   if (hid->poll_thread)
      FUNC2(hid->poll_thread);

   hid->manual_removal   = TRUE;

   /* remove each of the adapters */
   for (adapter = hid->adapters_head; adapter; adapter = next_adapter)
   {
      next_adapter = adapter->next;
      FUNC3(adapter);
   }

   FUNC1(hid->connections);

   FUNC0(hid);
}