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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  MEMOP_FREE ; 
 int /*<<< orphan*/  __heapBase ; 
 scalar_t__ __heap_size ; 
 int /*<<< orphan*/  __linear_heap ; 
 scalar_t__ __linear_heap_size ; 
 int /*<<< orphan*/  __stack_bottom ; 
 scalar_t__ __stack_size_extra ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ __system_argv ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void __attribute__((noreturn)) FUNC6(int rc)
{
   u32 tmp = 0;

   if (__system_argv)
      FUNC3(__system_argv);

   /* Unmap the linear heap */
   FUNC4(&tmp, __linear_heap, 0x0, __linear_heap_size, MEMOP_FREE, 0x0);

   /* Unmap the application heap */
   FUNC4(&tmp, __heapBase, 0x0, __heap_size, MEMOP_FREE, 0x0);

   if (__stack_size_extra)
      FUNC4(&tmp, __stack_bottom, 0x0, __stack_size_extra, MEMOP_FREE, 0x0);

   /* Close some handles */
   FUNC2();

   if (&__sync_fini)
      FUNC0();

   /* Jump to the loader if it provided a callback */
   if (&__system_retAddr)
      FUNC1();

   /* Since above did not jump, end this process */
   FUNC5();
}