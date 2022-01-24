#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wiiu_hid_t ;
struct TYPE_6__ {scalar_t__ type; struct TYPE_6__* next; } ;
typedef  TYPE_1__ wiiu_attach_event ;

/* Variables and functions */
 scalar_t__ HID_DEVICE_ATTACH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(wiiu_hid_t *hid, wiiu_attach_event *list)
{
   wiiu_attach_event *event, *event_next = NULL;

   if (!hid || !list)
      return;

   for (event = list; event != NULL; event = event_next)
   {
      event_next  = event->next;
      if (event->type == HID_DEVICE_ATTACH)
         FUNC1(hid, event);
      else
         FUNC2(hid, event);
      FUNC0(event);
   }
}