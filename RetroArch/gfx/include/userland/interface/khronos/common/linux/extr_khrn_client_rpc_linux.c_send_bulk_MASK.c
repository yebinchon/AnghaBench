#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ VCOS_STATUS_T ;
typedef  scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_3__ {scalar_t__ size; void const* data; } ;
typedef  TYPE_1__ VCHIQ_ELEMENT_T ;
typedef  int /*<<< orphan*/  CLIENT_THREAD_STATE_T ;

/* Variables and functions */
 scalar_t__ KHDISPATCH_CTRL_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ VCHIQ_SUCCESS ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  bulk_event ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(CLIENT_THREAD_STATE_T *thread, const void *in, uint32_t len)
{
   if (len <= KHDISPATCH_CTRL_THRESHOLD) {
      VCHIQ_ELEMENT_T element;

      element.data = in;
      element.size = len;

      VCHIQ_STATUS_T vchiq_status = FUNC4(FUNC1(thread), &element, 1);
      FUNC0(vchiq_status);
      FUNC5(vchiq_status == VCHIQ_SUCCESS);
   } else {
      VCHIQ_STATUS_T vchiq_status = FUNC3(FUNC1(thread), in, FUNC2(len), NULL);
      FUNC0(vchiq_status);
      FUNC5(vchiq_status == VCHIQ_SUCCESS);
      VCOS_STATUS_T vcos_status = FUNC6(&bulk_event);
      FUNC0(vcos_status);
      FUNC5(vcos_status == VCOS_SUCCESS);
   }
}