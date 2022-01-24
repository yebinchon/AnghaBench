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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * client_handle; scalar_t__ initialised; } ;

/* Variables and functions */
 scalar_t__ VCOS_SUCCESS ; 
 TYPE_1__ tvservice_client ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline int FUNC3 (void) {
   if(tvservice_client.initialised && FUNC1(&tvservice_client.lock) == VCOS_SUCCESS) {
      //Check again in case the service has been stopped
      if (tvservice_client.initialised) {
         FUNC0(tvservice_client.client_handle[0]);
         return 0;
      }
      else
         FUNC2(&tvservice_client.lock);
   }

   return -1;
}