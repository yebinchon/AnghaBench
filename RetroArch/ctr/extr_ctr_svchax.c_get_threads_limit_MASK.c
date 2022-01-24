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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  Handle ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_KPROCESS_HANDLE ; 
 scalar_t__ MCH2_THREAD_COUNT_MAX ; 
 scalar_t__ RESOURCE_LIMIT_THREADS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__*,int) ; 

__attribute__((used)) static u32 FUNC4(void)
{
   Handle resource_limit_handle;
   s64 thread_limit_current;
   s64 thread_limit_max;
   u32 thread_limit_name = RESOURCE_LIMIT_THREADS;

   FUNC1(&resource_limit_handle, CURRENT_KPROCESS_HANDLE);
   FUNC2(&thread_limit_current, resource_limit_handle, &thread_limit_name, 1);
   FUNC3(&thread_limit_max, resource_limit_handle, &thread_limit_name, 1);
   FUNC0(resource_limit_handle);

   if (thread_limit_max > MCH2_THREAD_COUNT_MAX)
      thread_limit_max = MCH2_THREAD_COUNT_MAX;

   return thread_limit_max - thread_limit_current;
}