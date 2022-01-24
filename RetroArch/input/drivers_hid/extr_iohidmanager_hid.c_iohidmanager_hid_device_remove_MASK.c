#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iohidmanager_hid_adapter {size_t slot; struct iohidmanager_hid_adapter* next; struct iohidmanager_hid_adapter* buttons; struct iohidmanager_hid_adapter* axes; struct iohidmanager_hid_adapter* hats; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/ * slots; int /*<<< orphan*/ * axes; scalar_t__* buttons; } ;
typedef  TYPE_1__ iohidmanager_hid_t ;
typedef  struct iohidmanager_hid_adapter apple_input_rec_t ;
typedef  int /*<<< orphan*/  IOReturn ;

/* Variables and functions */
 size_t MAX_USERS ; 
 int /*<<< orphan*/  FUNC0 (struct iohidmanager_hid_adapter*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC5(void *data,
      IOReturn result, void* sender)
{
   struct iohidmanager_hid_adapter *adapter =
      (struct iohidmanager_hid_adapter*)data;
   iohidmanager_hid_t *hid = (iohidmanager_hid_t*)
      FUNC1();

   if (hid && adapter && (adapter->slot < MAX_USERS))
   {
      FUNC2(adapter->slot, adapter->name);

      hid->buttons[adapter->slot] = 0;
      FUNC3(hid->axes[adapter->slot], 0, sizeof(hid->axes));

      FUNC4(&hid->slots[adapter->slot], adapter->slot);
   }

   if (adapter)
   {
      apple_input_rec_t* tmp = NULL;
      while (adapter->hats != NULL)
      {
          tmp           = adapter->hats;
          adapter->hats = adapter->hats->next;
          FUNC0(tmp);
      }

      while (adapter->axes != NULL)
      {
          tmp           = adapter->axes;
          adapter->axes = adapter->axes->next;
          FUNC0(tmp);
      }

      while (adapter->buttons != NULL)
      {
          tmp              = adapter->buttons;
          adapter->buttons = adapter->buttons->next;
          FUNC0(tmp);
      }
      FUNC0(adapter);
   }
}