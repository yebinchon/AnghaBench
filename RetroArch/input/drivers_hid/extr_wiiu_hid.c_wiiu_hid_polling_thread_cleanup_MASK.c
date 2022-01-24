#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ state; struct TYPE_4__* next; } ;
typedef  TYPE_1__ wiiu_adapter_t ;
struct TYPE_5__ {TYPE_1__* list; } ;
typedef  int /*<<< orphan*/  OSThread ;

/* Variables and functions */
 scalar_t__ ADAPTER_STATE_READING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_3__ adapters ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(OSThread *thread, void *stack)
{
   int incomplete          = 0;
   int retries             = 0;
   wiiu_adapter_t *adapter = NULL;

   FUNC0("Waiting for in-flight reads to finish.\n");

   /* We don't need to protect the adapter list here because nothing else
      will access it during this method (the HID system is shut down, and
      the only other access is the polling thread that just stopped */
   do
   {
      incomplete = 0;
      for (adapter = adapters.list; adapter != NULL; adapter = adapter->next)
      {
         if (adapter->state == ADAPTER_STATE_READING)
            incomplete++;
      }

      if (incomplete == 0)
      {
         FUNC0("All in-flight reads complete.\n");
         while(adapters.list != NULL)
         {
            FUNC0("[hid]: shutting down adapter..\n");
            adapter = adapters.list;
            adapters.list = adapter->next;
            FUNC2(adapter);
         }
      }

      if (incomplete)
         FUNC3(5000);

      if (++retries >= 1000)
      {
         FUNC1("[hid]: timed out waiting for in-flight read to finish.\n");
         incomplete = 0;
      }
   } while(incomplete);
}