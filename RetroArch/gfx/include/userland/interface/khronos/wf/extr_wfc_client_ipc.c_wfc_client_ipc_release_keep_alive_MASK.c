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
struct TYPE_2__ {scalar_t__ keep_alive_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  service; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 TYPE_1__ wfc_client_ipc ; 

void FUNC4(void)
{
   FUNC1(&wfc_client_ipc.lock);

   if (FUNC3(wfc_client_ipc.keep_alive_count > 0))
   {
      if (!--wfc_client_ipc.keep_alive_count)
         FUNC0(wfc_client_ipc.service);
   }

   FUNC2(&wfc_client_ipc.lock);
}