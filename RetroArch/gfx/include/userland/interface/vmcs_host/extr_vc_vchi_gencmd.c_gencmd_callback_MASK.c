#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  VCOS_EVENT_T ;
typedef  scalar_t__ VCHI_CALLBACK_REASON_T ;

/* Variables and functions */
 scalar_t__ const VCHI_CALLBACK_MSG_AVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1( void *callback_param,
                             const VCHI_CALLBACK_REASON_T reason,
                             void *msg_handle ) {

   VCOS_EVENT_T *event = (VCOS_EVENT_T *)callback_param;

	(void)msg_handle;
   if ( reason != VCHI_CALLBACK_MSG_AVAILABLE || !event)
      return;

   FUNC0(event);
}