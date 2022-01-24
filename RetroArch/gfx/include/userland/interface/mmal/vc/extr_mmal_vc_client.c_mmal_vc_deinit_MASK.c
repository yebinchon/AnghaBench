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
struct TYPE_2__ {int refcount; int /*<<< orphan*/  lock; scalar_t__ inited; int /*<<< orphan*/  service; int /*<<< orphan*/  waitpool; int /*<<< orphan*/  bulk_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  VCHIQ_SERVICE_HANDLE_INVALID ; 
 int /*<<< orphan*/  VCOS_LOG_CATEGORY ; 
 TYPE_1__ client ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mmal_vchiq_instance ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(void)
{
   int count;

   FUNC5(&client.lock);
   count = --client.refcount;
   if (count != 0)
   {
      /* Still in use so don't do anything */
      FUNC6(&client.lock);
      return;
   }

   FUNC4(&client.bulk_lock);
   FUNC0(&client.waitpool);
   FUNC1(client.service);
   FUNC2(mmal_vchiq_instance);
   FUNC3(VCOS_LOG_CATEGORY);

   client.service = VCHIQ_SERVICE_HANDLE_INVALID;
   client.inited = 0;
   FUNC6(&client.lock);
}