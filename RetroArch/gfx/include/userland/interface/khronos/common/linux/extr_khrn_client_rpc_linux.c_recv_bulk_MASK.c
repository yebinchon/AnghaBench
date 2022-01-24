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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ VCOS_STATUS_T ;
typedef  scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_4__ {scalar_t__ size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ VCHIQ_HEADER_T ;
typedef  int /*<<< orphan*/  CLIENT_THREAD_STATE_T ;

/* Variables and functions */
 scalar_t__ KHDISPATCH_CTRL_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ VCHIQ_SUCCESS ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  bulk_event ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(CLIENT_THREAD_STATE_T *thread, void *out, uint32_t len)
{
   if (len <= KHDISPATCH_CTRL_THRESHOLD) {
      VCHIQ_HEADER_T *header = FUNC7(FUNC2(thread));
      FUNC8(header->size == len);
      FUNC3(out, header->data, len);
      FUNC6(FUNC1(thread), header);
   } else {
      VCHIQ_STATUS_T vchiq_status = FUNC5(FUNC1(thread), out, FUNC4(len), NULL);
      FUNC0(vchiq_status);
      FUNC8(vchiq_status == VCHIQ_SUCCESS);
      VCOS_STATUS_T vcos_status = FUNC9(&bulk_event);
      FUNC0(vcos_status);
      FUNC8(vcos_status == VCOS_SUCCESS);
   }
}