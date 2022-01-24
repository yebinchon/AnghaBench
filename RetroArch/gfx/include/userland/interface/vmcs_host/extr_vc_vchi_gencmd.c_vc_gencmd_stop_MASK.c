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
typedef  size_t int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  message_available_event; int /*<<< orphan*/  lock; scalar_t__ initialised; int /*<<< orphan*/ * open_handle; scalar_t__ num_connections; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ gencmd_client ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7 () {
   // Assume a "power down" gencmd has been sent and the lock is held. There will
   // be no response so this should be called instead.
   int32_t success,i;

   if (!gencmd_client.initialised)
      return;

   if(FUNC1() == 0)
   {
      FUNC3();

      for(i = 0; i< (int32_t)gencmd_client.num_connections; i++) {
         success = FUNC4( gencmd_client.open_handle[i]);
         FUNC0(success == 0);
      }

      gencmd_client.initialised = 0;

      FUNC2();

      FUNC6(&gencmd_client.lock);
      FUNC5(&gencmd_client.message_available_event);
   }
}