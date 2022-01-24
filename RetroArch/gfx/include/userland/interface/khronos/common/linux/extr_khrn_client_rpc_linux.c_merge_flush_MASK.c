#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_9__ {scalar_t__ size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ VCHIQ_ELEMENT_T ;
struct TYPE_10__ {scalar_t__ merge_pos; int /*<<< orphan*/  merge_buffer; } ;
typedef  TYPE_2__ CLIENT_THREAD_STATE_T ;

/* Variables and functions */
 scalar_t__ CLIENT_MAKE_CURRENT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ VCHIQ_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(CLIENT_THREAD_STATE_T *thread)
{
   FUNC7("merge_flush start");

   FUNC6(thread->merge_pos >= CLIENT_MAKE_CURRENT_SIZE);

   /*
      don't transmit just a make current -- in the case that there is only a
      make current in the merge buffer, we have already sent a control message
      for the rpc call (and with it a make current) and own the big lock
   */

   if (thread->merge_pos > CLIENT_MAKE_CURRENT_SIZE) {
      VCHIQ_ELEMENT_T element;

      FUNC3(thread);

      element.data = thread->merge_buffer;
      element.size = thread->merge_pos;

      VCHIQ_STATUS_T success = FUNC5(FUNC2(thread), &element, 1);
      FUNC0(success);
      FUNC6(success == VCHIQ_SUCCESS);

      thread->merge_pos = 0;

      FUNC1(thread);

      FUNC6(thread->merge_pos == CLIENT_MAKE_CURRENT_SIZE);

      FUNC4(thread);
   }
   FUNC7( "merge_flush end");

}