#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wiiu_hid_t ;
struct TYPE_8__ {int /*<<< orphan*/  driver; } ;
typedef  TYPE_1__ wiiu_attach_event ;
struct TYPE_9__ {int /*<<< orphan*/  state; int /*<<< orphan*/  driver; int /*<<< orphan*/ * hid; } ;
typedef  TYPE_2__ wiiu_adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADAPTER_STATE_NEW ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(wiiu_hid_t *hid, wiiu_attach_event *event)
{
   wiiu_adapter_t *adapter = FUNC2(event);

   if (!adapter)
   {
      FUNC0("[hid]: Failed to allocate adapter.\n");
      goto error;
   }

   adapter->hid    = hid;
   adapter->driver = event->driver;
   adapter->state  = ADAPTER_STATE_NEW;

   FUNC3(adapter);

   return;

error:
   FUNC1(adapter);
}