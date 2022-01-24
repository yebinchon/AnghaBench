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
typedef  scalar_t__ user_addr_t ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  memorystatus_priority_entry_t ;
typedef  size_t int32_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ USER_ADDR_NULL ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ **,size_t*,size_t*,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,scalar_t__,size_t) ; 

__attribute__((used)) static int
FUNC4(pid_t pid, user_addr_t buffer, size_t buffer_size, int32_t *retval) {
	int error = 0;
	boolean_t size_only;
	size_t list_size;

	/*
	 * When a non-zero pid is provided, the 'list' has only one entry.
	 */
	
	size_only = ((buffer == USER_ADDR_NULL) ? TRUE: FALSE);

	if (pid != 0) {
		list_size = sizeof(memorystatus_priority_entry_t) * 1;
		if (!size_only) {
			error = FUNC3(pid, buffer, buffer_size);
		}
	} else {
		memorystatus_priority_entry_t *list = NULL;
		error = FUNC2(&list, &buffer_size, &list_size, size_only);

		if (error == 0) {
			if (!size_only) {
				error = FUNC0(list, buffer, list_size);
			}
		}

		if (list) {
			FUNC1(list, buffer_size);
		}
	}

	if (error == 0) {
		*retval = list_size;
	}

	return (error);
}