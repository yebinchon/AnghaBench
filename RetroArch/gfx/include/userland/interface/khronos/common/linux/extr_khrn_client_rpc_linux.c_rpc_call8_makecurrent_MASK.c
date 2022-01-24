#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_6__ {scalar_t__ merge_pos; int /*<<< orphan*/  merge_buffer; } ;
typedef  TYPE_1__ CLIENT_THREAD_STATE_T ;

/* Variables and functions */
 scalar_t__ CLIENT_MAKE_CURRENT_SIZE ; 
 scalar_t__ EGLINTMAKECURRENT_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  eglIntMakeCurrent_impl ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6(CLIENT_THREAD_STATE_T *thread, uint32_t id, uint32_t p0,
   uint32_t p1, uint32_t p2, uint32_t p3, uint32_t p4, uint32_t p5, uint32_t p6, uint32_t p7)
{
   uint32_t data;
   if (thread->merge_pos == CLIENT_MAKE_CURRENT_SIZE && (FUNC1(&data,thread->merge_buffer,sizeof(data)), data == EGLINTMAKECURRENT_ID))
   {
      FUNC2(thread);
      FUNC5("rpc_call8_makecurrent collapse onto previous makecurrent");

      thread->merge_pos = 0;

      FUNC0(eglIntMakeCurrent_impl, thread, EGLINTMAKECURRENT_ID, p0, p1, p2, p3, p4, p5, p6, p7);
      FUNC4(thread->merge_pos == CLIENT_MAKE_CURRENT_SIZE);

      FUNC3(thread);
   }
   else
   {
      FUNC0(eglIntMakeCurrent_impl, thread, EGLINTMAKECURRENT_ID, p0, p1, p2, p3, p4, p5, p6, p7);
   }
}