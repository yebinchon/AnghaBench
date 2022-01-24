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
typedef  int /*<<< orphan*/  thread_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_object_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_MSG_TYPE_COPY_SEND ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THREAD_NULL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

thread_t
FUNC6(
	mach_port_name_t	name)
{
	thread_t	thread = THREAD_NULL;
	ipc_port_t	kport;

	if (FUNC1(name)) {
		if (FUNC4(FUNC3(), name,
					       MACH_MSG_TYPE_COPY_SEND,
							  (ipc_object_t *)&kport) != KERN_SUCCESS)
			return (THREAD_NULL);

		thread = FUNC2(kport);
		
		if (FUNC0(kport))
			FUNC5(kport);
	}

	return (thread);
}