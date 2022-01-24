#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int ref_count; scalar_t__ stems_count; int /*<<< orphan*/  mutex; int /*<<< orphan*/  objects; } ;
typedef  TYPE_1__ VG_CLIENT_SHARED_STATE_T ;
typedef  scalar_t__ KHR_STATUS_T ;

/* Variables and functions */
 scalar_t__ KHR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

VG_CLIENT_SHARED_STATE_T *FUNC5(void)
{
   VG_CLIENT_SHARED_STATE_T *shared_state;
   KHR_STATUS_T status;

   shared_state = (VG_CLIENT_SHARED_STATE_T *)FUNC1(sizeof(VG_CLIENT_SHARED_STATE_T), "VG_CLIENT_SHARED_STATE_T");
   if (!shared_state) {
      return NULL;
   }

   status = FUNC3(&shared_state->mutex);
   if (status != KHR_SUCCESS) {
      FUNC0(shared_state);
      return NULL;
   }

   if (!FUNC2(&shared_state->objects, 128)) {
      FUNC4(&shared_state->mutex);
      FUNC0(shared_state);
      return NULL;
   }

   shared_state->ref_count = 1;
   shared_state->stems_count = 0;

   return shared_state;
}