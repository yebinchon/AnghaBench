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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  THREAD_PROC ;
typedef  int /*<<< orphan*/  LISTENER ;
typedef  int /*<<< orphan*/  CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int,int) ; 

LISTENER *FUNC1(CEDAR *cedar, UINT proto, UINT port, THREAD_PROC *proc, void *thread_param, bool local_only)
{
	return FUNC0(cedar, proto, port, proc, thread_param, local_only, false);
}